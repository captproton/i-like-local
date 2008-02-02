require File.dirname(__FILE__) + '/../test_helper'
require 'brokers_controller'

# Re-raise errors caught by the controller.
class BrokersController; def rescue_action(e) raise e end; end

class BrokersControllerTest < Test::Unit::TestCase

  def setup
    @controller = BrokersController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @habitat    = habitats(:one)
    
  end

  def test_should_get_index
    get :index, :habitat_id => @habitat.id
    assert_response :success
    assert assigns(:brokers)
  end

  def test_should_get_new
    get :new, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_create_broker
    old_count = Broker.count
    post :create, :broker => { }, :habitat_id => @habitat.id
    assert_equal old_count+1, Broker.count
    
    assert_redirected_to habitat_broker_path(assigns(:broker))
  end

  def test_should_show_broker
    get :show, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_update_broker
    put :update, :id => 1, :broker => { }, :habitat_id => @habitat.id
    assert_redirected_to habitat_broker_path(assigns(:broker))
  end
  
  def test_should_destroy_broker
    old_count = Broker.count
    delete :destroy, :id => 1, :habitat_id => @habitat.id
    assert_equal old_count-1, Broker.count
    
    assert_redirected_to habitat_brokers_path
  end
end
