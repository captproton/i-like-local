class PropertyListingsController < ApplicationController

  def index
      @listings = PropertyListing.find(:all)
  end

  def new
      @habitat  = Habitat.new
      @listing  = PropertyListing.create
      render :action => :edit
  end

  def edit
      @listing  = PropertyListing.find(params[:id])
      @form     = @listing.habitats.find_by_property_form_id(@listing.current_form.id) || PropertyForm.new
  end

  def update
      @listing  = PropertyListing.find(params[:id])
      @habitat  = @listing.habitats.find_by_property_form_id(@listing.current_form)
      
      if @habitat
        @habitat.update_attribute(:street, params[:habitat][:street])
      else
        @habitat = Habitat.new( :street         => params[:habitat][:street],
                                :property_form  => @listing.current_form)
        
        @listing.habitats << @habitat
      end
      
      @listing.send(params[:direction])
      
      redirect_to :action => :edit
  end
  
  
end
