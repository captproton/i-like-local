class StatesController < ApplicationController
  # GET /states
  # GET /states.xml
  def index
    @states = State.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @states.to_xml }
    end
  end

  # GET /states/1
  # GET /states/1.xml
  def show
    @state = State.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @state.to_xml }
    end
  end

  # GET /states/new
  def new
    @state = State.new
  end

  # GET /states/1;edit
  def edit
    @state = State.find(params[:id])
  end

  # POST /states
  # POST /states.xml
  def create
    @state = State.new(params[:state])

    respond_to do |format|
      if @state.save
        flash[:notice] = 'State was successfully created.'
        format.html { redirect_to state_url(@state) }
        format.xml  { head :created, :location => state_url(@state) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @state.errors.to_xml }
      end
    end
  end

  # PUT /states/1
  # PUT /states/1.xml
  def update
    @state = State.find(params[:id])

    respond_to do |format|
      if @state.update_attributes(params[:state])
        flash[:notice] = 'State was successfully updated.'
        format.html { redirect_to state_url(@state) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @state.errors.to_xml }
      end
    end
  end

  # DELETE /states/1
  # DELETE /states/1.xml
  def destroy
    @state = State.find(params[:id])
    @state.destroy

    respond_to do |format|
      format.html { redirect_to states_url }
      format.xml  { head :ok }
    end
  end
end
