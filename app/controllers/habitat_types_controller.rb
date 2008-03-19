class HabitatTypesController < ApplicationController
  # GET /habitat_types
  # GET /habitat_types.xml
  def index
    @habitat_types = HabitatType.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @habitat_types.to_xml }
    end
  end

  # GET /habitat_types/1
  # GET /habitat_types/1.xml
  def show
    @habitat_type = HabitatType.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @habitat_type.to_xml }
    end
  end

  # GET /habitat_types/new
  def new
    @habitat_type = HabitatType.new
  end

  # GET /habitat_types/1;edit
  def edit
    @habitat_type = HabitatType.find(params[:id])
  end

  # POST /habitat_types
  # POST /habitat_types.xml
  def create
    @habitat_type = HabitatType.new(params[:habitat_type])

    respond_to do |format|
      if @habitat_type.save
        flash[:notice] = 'HabitatType was successfully created.'
        format.html { redirect_to habitat_type_url(@habitat_type) }
        format.xml  { head :created, :location => habitat_type_url(@habitat_type) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @habitat_type.errors.to_xml }
      end
    end
  end

  # PUT /habitat_types/1
  # PUT /habitat_types/1.xml
  def update
    @habitat_type = HabitatType.find(params[:id])

    respond_to do |format|
      if @habitat_type.update_attributes(params[:habitat_type])
        flash[:notice] = 'HabitatType was successfully updated.'
        format.html { redirect_to habitat_type_url(@habitat_type) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @habitat_type.errors.to_xml }
      end
    end
  end

  # DELETE /habitat_types/1
  # DELETE /habitat_types/1.xml
  def destroy
    @habitat_type = HabitatType.find(params[:id])
    @habitat_type.destroy

    respond_to do |format|
      format.html { redirect_to habitat_types_url }
      format.xml  { head :ok }
    end
  end
end
