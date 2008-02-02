class OfficesController < ApplicationController
    
    before_filter(:get_habitat)
    
  # GET /offices
  # GET /offices.xml
  def index
    @offices = @habitat.offices.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @offices.to_xml }
    end
  end

  # GET /offices/1
  # GET /offices/1.xml
  def show
    @office  = @habitat.offices.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @office.to_xml }
    end
  end

  # GET /offices/new
  def new
    @office = Office.new
  end

  # GET /offices/1;edit
  def edit
    @office= @habitat.offices.find(params[:id])
  end

  # POST /offices
  # POST /offices.xml
  def create
    @office = Office.new(params[:office])
    @office.habitat_id=@habitat.id

    respond_to do |format|
      if @office.save
        flash[:notice] = 'Office was successfully created.'
        format.html { redirect_to habitat_office_url(@habitat, @office) }
        format.xml  { head :created, :location => habitat_office_url(@habitat, @office) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @office.errors.to_xml }
      end
    end
  end

  # PUT /offices/1
  # PUT /offices/1.xml
  def update
    @office = @habitat.offices.find(params[:id])

    respond_to do |format|
      if @office.update_attributes(params[:office])
        flash[:notice] = 'Office was successfully updated.'
        format.html { redirect_to habitat_office_url(@habitat, @office) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @office.errors.to_xml }
      end
    end
  end

  # DELETE /offices/1
  # DELETE /offices/1.xml
  def destroy
    @office = @habitat.offices.find(params[:id])
    @office.destroy

    respond_to do |format|
      format.html { redirect_to habitat_offices_url }
      format.xml  { head :ok }
    end
  end
  
  
  private
  def get_habitat
    @habitat = Habitat.find(params[:habitat_id])
  end
  
end
