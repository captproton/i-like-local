class HabitatsController < ApplicationController

      before_filter :load_city, :except => [ :show, :edit ]

    # GET /open_homes
    # GET /open_homes.xml
  # GET /habitats
  # GET /habitats.xml
  def index
      @habitats = @city.habitats.find(:all)
      @total_habitats = @city.habitats.count 
      

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @habitats.to_xml }
    end
  end

  # GET /habitats/1
  # GET /habitats/1.xml
  def show
    @habitat = Habitat.find(params[:id])
    @city = City.find(@habitat.city_id)
    

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @habitat.to_xml }
    end
  end

  # GET /habitats/new
  def new
    @habitat = Habitat.new
  end

  # GET /habitats/1;edit
  def edit
    @habitat = Habitat.find(params[:id])
    @city = City.find(@habitat.city_id)
    
  end

  # POST /habitats
  # POST /habitats.xml
  def create
    @habitat            = Habitat.new(params[:habitat])
    @habitat.city_id    = @city.id
    @habitat.address    = "2555 Washington Blvd., Ogden, Utah"
    
    

    respond_to do |format|
      if @habitat.save
        flash[:notice] = 'Habitat was successfully created.'
        format.html { redirect_to habitat_url(@habitat) }
        format.xml  { head :created, :location => habitat_url(@habitat) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @habitat.errors.to_xml }
      end
    end
  end

  # PUT /habitats/1
  # PUT /habitats/1.xml
  def update
    @habitat = Habitat.find(params[:id])
    @habitat.city_id    = @city.id
    

    respond_to do |format|
      if @habitat.update_attributes(params[:habitat])
        flash[:notice] = 'Habitat was successfully updated.'
        format.html { redirect_to habitat_url(@habitat) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @habitat.errors.to_xml }
      end
    end
  end

  # DELETE /habitats/1
  # DELETE /habitats/1.xml
  def destroy
    @habitat = Habitat.find(params[:id])
    @habitat.destroy

    respond_to do |format|
      format.html { redirect_to city_habitats_url }
      format.xml  { head :ok }
    end
  end
  private

	def load_default_page_variable
		@header = 'header_regular'
		@css = '1'
		@addl_style = 'none'
		@body_class = ''
	end 
	
	def load_city
      @city = City.find(params[:city_id])
      @habitat = @city.habitats.find(params[:id]) if params[:id]
    end
  
end
