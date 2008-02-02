require File.dirname(__FILE__) + '/../test_helper'
require 'cities_controller'

# Re-raise errors caught by the controller.
class CitiesController; def rescue_action(e) raise e end; end

class CitiesControllerTest < Test::Unit::TestCase

  def setup
    @controller = CitiesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @state      = states(:one)
  end

  def test_should_get_index
    get :index, :state_id => @state.id
    assert_response :success
    assert assigns(:cities)
  end

  def test_should_get_new
    get :new, :state_id => @state.id
    assert_response :success
  end
  
  def test_should_create_city
    old_count = City.count
    post :create, :city => { }, :state_id => @state.id
    assert_equal old_count+1, City.count
    
    assert_redirected_to city_path(assigns(:city))
  end

  def test_should_show_city
    get :show, :id => 1, :state_id => @state.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :state_id => @state.id
    assert_response :success
  end
  
  def test_should_update_city
    put :update, :id => 1, :city => { }, :state_id => @state.id
    assert_redirected_to city_path(assigns(:city))
  end
  
  def test_should_destroy_city
    old_count = City.count
    delete :destroy, :id => 1, :state_id => @state.id
    assert_equal old_count-1, City.count
    
    assert_redirected_to cities_path
  end
end
