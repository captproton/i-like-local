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
        @habitat = Habitat.new(:street)
        
        @listing.habitats << @habitat
      end
      
      @listing.send(params[:direction])
      
      redirect_to :action => :edit
  end
  
  ########### p. 85
#  def index
#    @quizzes = Quiz.find(:all)
#  end
   
  
#  def new
#    @answer = Answer.new
#    @quiz   = Quiz.create
#    render :action => :edit
#  end
  
    
  
#  def edit
#    @quiz   = Quiz.find(params[:id])
#    @answer = @quiz.answers.
#                find_by_question_id(@quiz.current_question.id) || Answer.new
#  end
  
  
  
#  def update
#    @quiz = Quiz.find(params[:id])
#    @answer = @quiz.answers.find_by_question_id(@quiz.current_question) 
    
#    if @answer
#      @answer.update_attribute(:value, params[:answer][:value])
#    else
#      @answer = Answer.new(:value    => params[:answer][:value],
#                           :question => @quiz.current_question)
#      @quiz.answers << @answer
#    end
    
#    @quiz.send(params[:direction])
    
#    redirect_to :action => :edit
#  end
  
end
