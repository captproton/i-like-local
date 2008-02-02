class AdvertisersController < ApplicationController
  # GET /advertisers
  # GET /advertisers.xml
  def index
    @advertisers = Advertiser.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @advertisers.to_xml }
    end
  end

  # GET /advertisers/1
  # GET /advertisers/1.xml
  def show
    @advertiser = Advertiser.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @advertiser.to_xml }
    end
  end

  # GET /advertisers/new
  def new
    @advertiser = Advertiser.new
  end

  # GET /advertisers/1;edit
  def edit
    @advertiser = Advertiser.find(params[:id])
  end

  # POST /advertisers
  # POST /advertisers.xml
  def create
    @advertiser = Advertiser.new(params[:advertiser])

    respond_to do |format|
      if @advertiser.save
        flash[:notice] = 'Advertiser was successfully created.'
        format.html { redirect_to advertiser_url(@advertiser) }
        format.xml  { head :created, :location => advertiser_url(@advertiser) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @advertiser.errors.to_xml }
      end
    end
  end

  # PUT /advertisers/1
  # PUT /advertisers/1.xml
  def update
    @advertiser = Advertiser.find(params[:id])

    respond_to do |format|
      if @advertiser.update_attributes(params[:advertiser])
        flash[:notice] = 'Advertiser was successfully updated.'
        format.html { redirect_to advertiser_url(@advertiser) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @advertiser.errors.to_xml }
      end
    end
  end

  # DELETE /advertisers/1
  # DELETE /advertisers/1.xml
  def destroy
    @advertiser = Advertiser.find(params[:id])
    @advertiser.destroy

    respond_to do |format|
      format.html { redirect_to advertisers_url }
      format.xml  { head :ok }
    end
  end
end
