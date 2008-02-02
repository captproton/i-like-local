class SitemapController < ApplicationController

  def index
      specs = params[:specs] # e.g, [“base”, “books”, “fiction”, “dickens”] 
  end
  
  def specify 
  @states = State.find(:all, :conditions => Hash[params[:specs]]) 
  if @states.any? 
  render :action => “index” 
  else 
  flash[:error] = “Can’t find items with those properties” 
  redirect_to :action => “index” 
  end 
  end 
  
end
