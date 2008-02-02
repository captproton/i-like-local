class OpenHomesController < ApplicationController
    
    before_filter(:get_habitat)
    
  # GET /open_homes
  # GET /open_homes.xml
  def index
    @open_homes = @habitat.open_homes.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @open_homes.to_xml }
    end
  end

  # GET /open_homes/1
  # GET /open_homes/1.xml
  def show
    @open_home = @habitat.open_homes.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @open_home.to_xml }
    end
  end

  # GET /open_homes/new
  def new
      @open_home = OpenHome.new
  end

  # GET /open_homes/1;edit
  def edit
    @open_home = @habitat.open_homes.find(params[:id])
  end

  # POST /open_homes
  # POST /open_homes.xml
  def create
    @open_home = OpenHome.new(params[:open_home])
    @open_home.habitat_id=@habitat.id

    respond_to do |format|
      if @open_home.save
        flash[:notice] = 'OpenHome was successfully created.'
        format.html { redirect_to habitat_open_home_url(@habitat, @open_home) }
        format.xml  { head :created, :location => habitat_open_home_url(@habitat, @open_home) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @open_home.errors.to_xml }
      end
    end
  end

  # PUT /open_homes/1
  # PUT /open_homes/1.xml
  def update
    @open_home = @habitat.open_homes.find(params[:id])

    respond_to do |format|
      if @open_home.update_attributes(params[:open_home])
        flash[:notice] = 'OpenHome was successfully updated.'
        format.html { redirect_to habitat_open_home_url(@habitat, @open_home) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @open_home.errors.to_xml }
      end
    end
  end

  # DELETE /open_homes/1
  # DELETE /open_homes/1.xml
  def destroy
    @open_home = @habitat.open_homes.find(params[:id])
    @open_home.destroy

    respond_to do |format|
      format.html { redirect_to habitat_open_homes_url }
      format.xml  { head :ok }
    end
  end
  
  private
  def get_habitat
    @habitat = Habitat.find(params[:habitat_id])
  end
end
