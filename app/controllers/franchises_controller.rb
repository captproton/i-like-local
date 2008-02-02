class FranchisesController < ApplicationController

    before_filter :get_habitat, :except => [ :show, :edit ]
    

  # GET /franchises
  # GET /franchises.xml
  def index
    @franchises = @habitat.franchises.find(:all)
    

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @franchises.to_xml }
    end
  end

  # GET /franchises/1
  # GET /franchises/1.xml
  def show
    @franchise = Franchise.find(params[:id])
    @habitat = Habitat.find(@franchise.habitat_id)
    

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @franchise.to_xml }
    end
  end

  # GET /franchises/new
  def new
    @franchise = Franchise.new
  end

  # GET /franchises/1;edit
  def edit
    @franchise = Franchise.find(params[:id])
    @habitat = Habitat.find(@franchise.habitat_id)
    
  end

  # POST /franchises
  # POST /franchises.xml
  def create
    @franchise = Franchise.new(params[:franchise])
    @franchise.habitat_id=@habitat.id
    

    respond_to do |format|
      if @franchise.save
        flash[:notice] = 'Franchise was successfully created.'
        format.html { redirect_to habitat_franchise_url(@habitat, @franchise) }
        format.xml  { head :created, :location => habitat_franchise_url(@habitat, @franchise) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @franchise.errors.to_xml }
      end
    end
  end

  # PUT /franchises/1
  # PUT /franchises/1.xml
  def update
    @franchise = Franchise.find(params[:id])

    respond_to do |format|
      if @franchise.update_attributes(params[:franchise])
        flash[:notice] = 'Franchise was successfully updated.'
        format.html { redirect_to habitat_franchises_url(@franchise) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @franchise.errors.to_xml }
      end
    end
  end

  # DELETE /franchises/1
  # DELETE /franchises/1.xml
  def destroy
    @franchise = Franchise.find(params[:id])
    @franchise.destroy

    respond_to do |format|
      format.html { redirect_to habitat_franchises_url(@habitat) }      
      format.xml  { head :ok }
    end
  end
  
  private
  def get_habitat
    @habitat = Habitat.find(params[:habitat_id])
  end
end
