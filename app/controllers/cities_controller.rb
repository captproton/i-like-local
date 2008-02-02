class CitiesController < ApplicationController
    
    before_filter :load_us_state, :except => [ :show, :edit ]
    
    
  # GET /cities
  # GET /cities.xml
  def index
      
    @cities = @state.cities.find(:all)
    

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @cities.to_xml }
    end
  end

  # GET /cities/1
  # GET /cities/1.xml
  def show
    @city = City.find(params[:id])
    @state = State.find(@city.state_id)
    

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @city.to_xml }
    end
  end

  # GET /cities/new
  def new
    @city = City.new
  end

  # GET /cities/1;edit
  def edit
    @city = City.find(params[:id])
    @state = State.find(@city.state_id)
  end

  # POST /cities
  # POST /cities.xml
  def create
    @city = City.new(params[:city])
    @city.state_id=@state.id
    

    respond_to do |format|
      if @city.save
        flash[:notice] = 'City was successfully created.'
        format.html { redirect_to city_url(@city) }
        format.xml  { head :created, :location => city_url(@state, @city) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @city.errors.to_xml }
      end
    end
  end

  # PUT /cities/1
  # PUT /cities/1.xml
  def update
    @city = City.find(params[:id])
    

    respond_to do |format|
      if @city.update_attributes(params[:city])
        flash[:notice] = 'City was successfully updated.'
        format.html { redirect_to city_url(@city) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @city.errors.to_xml }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.xml
  def destroy
    @city = City.find(params[:id])
    @city.destroy

    respond_to do |format|
      format.html { redirect_to state_cities_url(@state) }
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
	
	def load_us_state
      @state    = State.find(params[:state_id])
      @city     = @state.cities.find(params[:id]) if params[:id]
    end

    # Routing suggestion from Jamis Buck http://weblog.jamisbuck.org/2007/2/5/nesting-resources

    #map.resources :accounts do |accounts|
    #  accounts.resources :people, :name_prefix => "account_"
    #end

    #map.resources :people do |people|
    #  people.resources :notes, :name_prefix => "person_"
    #end

    #map.resources :notes do |notes|
    #  notes.resources :comments, :name_prefix => "note_"
    #end

    #map.resources :comments
  
end
