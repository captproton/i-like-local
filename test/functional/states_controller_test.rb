require File.dirname(__FILE__) + '/../test_helper'
require 'states_controller'

# Re-raise errors caught by the controller.
class StatesController; def rescue_action(e) raise e end; end

class StatesControllerTest < Test::Unit::TestCase
  fixtures :states

  def setup
    @controller = StatesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:states)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_state
    old_count = State.count
    post :create, :state => { }
    assert_equal old_count+1, State.count
    
    assert_redirected_to state_path(assigns(:state))
  end

  def test_should_show_state
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_state
    put :update, :id => 1, :state => { }
    assert_redirected_to state_path(assigns(:state))
  end
  
  def test_should_destroy_state
    old_count = State.count
    delete :destroy, :id => 1
    assert_equal old_count-1, State.count
    
    assert_redirected_to states_path
  end
end
