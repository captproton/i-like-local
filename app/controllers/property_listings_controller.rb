class PropertyListingsController < ApplicationController

  def index
      @listings = PropertyListing.find(:all)
  end

  def new
      @real_estate  = RealEstate.new
      @listing  = PropertyListing.create
      render :action => :edit
  end

  def edit
      @listing          = PropertyListing.find(params[:id])
      @real_estate      = @listing.real_estates.
                            find_by_property_listing_id(@listing.id) || RealEstate.new
  end

  def update
      @listing      = PropertyListing.find(params[:id])
      @real_estate  = @listing.real_estates.find_by_property_listing_id(@listing.id)
      
      if @real_estate
        @real_estate.update_attributes(params[:real_estate])
      else
        @real_estate = RealEstate.new( :value         => 
                                params[:real_estate][:value],
                                :property_form  => @listing.current_form)
        @listing.real_estates << @real_estate
      end
      
      @listing.send(params[:direction])
      
      redirect_to :action => :edit
  end
  
end
