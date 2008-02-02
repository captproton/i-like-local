require File.dirname(__FILE__) + '/../test_helper'
require 'agents_controller'

# Re-raise errors caught by the controller.
class AgentsController; def rescue_action(e) raise e end; end

class AgentsControllerTest < Test::Unit::TestCase

  def setup
    @controller = AgentsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @habitat      = habitats(:one)
    
  end

  def test_should_get_index
    get :index, :habitat_id => @habitat.id
    assert_response :success
    assert assigns(:agents)
  end

  def test_should_get_new
    get :new, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_create_agent
    old_count = Agent.count
    post :create, :agent => { }, :habitat_id => @habitat.id
    assert_equal old_count+1, Agent.count
    
    assert_redirected_to habitat_agent_path(assigns(:agent))
  end

  def test_should_show_agent
    get :show, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_update_agent
    put :update, :id => 1, :agent => { }, :habitat_id => @habitat.id
    assert_redirected_to habitat_agent_path(assigns(:agent))
  end
  
  def test_should_destroy_agent
    old_count = Agent.count
    delete :destroy, :id => 1, :habitat_id => @habitat.id
    assert_equal old_count-1, Agent.count
    
    assert_redirected_to habitat_agents_path
  end
end
