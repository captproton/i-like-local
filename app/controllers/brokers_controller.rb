class BrokersController < ApplicationController
    

    before_filter :get_habitat, :except => [ :show, :edit ]
    
    
  # GET /brokers
  # GET /brokers.xml
  def index
    @brokers = @habitat.brokers.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @brokers.to_xml }
    end
  end

  # GET /brokers/1
  # GET /brokers/1.xml
  def show
      @broker     = Broker.find(params[:id])
      
    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @broker.to_xml }
    end
  end

  # GET /brokers/new
  def new
    @broker = Broker.new
  end

  # GET /brokers/1;edit
  def edit
      @broker     = Broker.find(params[:id])
      
  end

  # POST /brokers
  # POST /brokers.xml
  def create
    @broker = Broker.new(params[:broker])
    @broker.habitat_id=@habitat.id
    

    respond_to do |format|
      if @broker.save
        flash[:notice] = 'Broker was successfully created.'
        format.html { redirect_to habitat_broker_url(@habitat, @broker) }
        format.xml  { head :created, :location => habitat_broker_url(@habitat, @broker) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @broker.errors.to_xml }
      end
    end
  end

  # PUT /brokers/1
  # PUT /brokers/1.xml
  def update

    respond_to do |format|
      if @broker.update_attributes(params[:broker])
        flash[:notice] = 'Broker was successfully updated.'
        format.html { redirect_to habitat_broker_url(@habitat, @broker) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @broker.errors.to_xml }
      end
    end
  end

  # DELETE /brokers/1
  # DELETE /brokers/1.xml
  def destroy
    @broker.destroy

    respond_to do |format|
      format.html { redirect_to habitat_brokers_url }
      format.xml  { head :ok }
    end
  end
  
  private
  def get_habitat
    @habitat    = Habitat.find(params[:habitat_id])
    @broker     = @habitat.brokers.find(params[:id]) if params[:id]
    
  end
  
  
end
