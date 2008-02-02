class LandingPagesController < ApplicationController
    
    before_filter(:get_habitat)
    
  # GET /landing_pages
  # GET /landing_pages.xml
  def index
    @landing_pages  = @habitat.landing_pages.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @landing_pages.to_xml }
    end
  end

  # GET /landing_pages/1
  # GET /landing_pages/1.xml
  def show
    
    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @landing_page.to_xml }
    end
  end

  # GET /landing_pages/new
  def new
    @landing_page = LandingPage.new
  end

  # GET /landing_pages/1;edit
  def edit

  end

  # POST /landing_pages
  # POST /landing_pages.xml
  def create
    @landing_page = LandingPage.new(params[:landing_page])
    @landing_page.habitat_id=@habitat.id
    

    respond_to do |format|
      if @landing_page.save
        flash[:notice] = 'LandingPage was successfully created.'
        format.html { redirect_to habitat_landing_page_url(@habitat, @landing_page) }
        format.xml  { head :created, :location => habitat_landing_page_url(@habitat, @landing_page) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @landing_page.errors.to_xml }
      end
    end
  end

  # PUT /landing_pages/1
  # PUT /landing_pages/1.xml
  def update

    respond_to do |format|
      if @landing_page.update_attributes(params[:landing_page])
        flash[:notice] = 'LandingPage was successfully updated.'
        format.html { redirect_to habitat_landing_page_url(@habitat, @landing_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @landing_page.errors.to_xml }
      end
    end
  end

  # DELETE /landing_pages/1
  # DELETE /landing_pages/1.xml
  def destroy

    @landing_page.destroy

    respond_to do |format|
      format.html { redirect_to habitat_landing_pages_url }
      format.xml  { head :ok }
    end
  end
  
  private
  def get_habitat
    @habitat = Habitat.find(params[:habitat_id])
    @landing_page =  @habitat.landing_pages.find(params[:id]) if params[:id]
  end
  
end
