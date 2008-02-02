class AgentsController < ApplicationController
    
    before_filter(:get_habitat)
    
  # GET /agents
  # GET /agents.xml
  def index
    @agents  = @habitat.agents.find(:all)

    respond_to do |format|
      format.html # index.rhtml
      format.xml  { render :xml => @agents.to_xml }
    end
  end

  # GET /agents/1
  # GET /agents/1.xml
  def show
    @agent = @habitat.agents.find(params[:id])

    respond_to do |format|
      format.html # show.rhtml
      format.xml  { render :xml => @agent.to_xml }
    end
  end

  # GET /agents/new
  def new
    @agent = Agent.new
  end

  # GET /agents/1;edit
  def edit
    @agent  = @habitat.agents.find(params[:id])
  end

  # POST /agents
  # POST /agents.xml
  def create
    @agent = Agent.new(params[:agent])
    @agent.habitat_id=@habitat.id
    

    respond_to do |format|
      if @agent.save
        flash[:notice] = 'Agent was successfully created.'
        format.html { redirect_to habitat_agent_url(@habitat, @agent) }
        format.xml  { head :created, :location => habitat_agent_url(@habitat, @agent) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @agent.errors.to_xml }
      end
    end
  end

  # PUT /agents/1
  # PUT /agents/1.xml
  def update
    @agent = @habitat.agents.find(params[:id])

    respond_to do |format|
      if @agent.update_attributes(params[:agent])
        flash[:notice] = 'Agent was successfully updated.'
        format.html { redirect_to habitat_agent_url(@habitat, @agent) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @agent.errors.to_xml }
      end
    end
  end

  # DELETE /agents/1
  # DELETE /agents/1.xml
  def destroy
    @agent = @habitat.agents.find(params[:id])
    @agent.destroy

    respond_to do |format|
      format.html { redirect_to habitat_agents_url }
      format.xml  { head :ok }
    end
  end
  
  private
  def get_habitat
    @habitat = Habitat.find(params[:habitat_id])
  end
end
