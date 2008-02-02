require File.dirname(__FILE__) + '/../test_helper'
require 'habitats_controller'

# Re-raise errors caught by the controller.
class HabitatsController; def rescue_action(e) raise e end; end

class HabitatsControllerTest < Test::Unit::TestCase

  def setup
    @controller = HabitatsController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @city       = cities(:one)
    
  end

  def test_should_get_index
    get :index, :city_id => @city.id
    assert_response :success
    assert assigns(:habitats)
  end

  def test_should_get_new
    get :new, :city_id => @city.id
    assert_response :success
  end
  
  def test_should_create_habitat
    old_count = Habitat.count
    post :create, :habitat => { }, :city_id => @city.id
    assert_equal old_count+1, Habitat.count
    
    assert_redirected_to habitat_path(assigns(:habitat))
  end

  def test_should_show_habitat
    get :show, :id => 1, :city_id => @city.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :city_id => @city.id
    assert_response :success
  end
  
  def test_should_update_habitat
    put :update, :id => 1, :habitat => { }, :city_id => @city.id
    assert_redirected_to habitat_path(assigns(:habitat))
  end
  
  def test_should_destroy_habitat
    old_count = Habitat.count
    delete :destroy, :id => 1, :city_id => @city.id
    assert_equal old_count-1, Habitat.count
    
    assert_redirected_to habitats_path
  end
end
