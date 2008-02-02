require File.dirname(__FILE__) + '/../test_helper'
require 'open_homes_controller'

# Re-raise errors caught by the controller.
class OpenHomesController; def rescue_action(e) raise e end; end

class OpenHomesControllerTest < Test::Unit::TestCase
  fixtures :open_homes

  def setup
    @controller = OpenHomesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @habitat    = habitats(:one)
    
  end

  def test_should_get_index
    get :index, :habitat_id => @habitat.id
    assert_response :success
    assert assigns(:open_homes)
  end

  def test_should_get_new
    get :new, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_create_open_home
    old_count = OpenHome.count
    post :create, :open_home => { }, :habitat_id => @habitat.id
    assert_equal old_count+1, OpenHome.count
    
    assert_redirected_to habitat_open_home_path(assigns(:open_home))
  end

  def test_should_show_open_home
    get :show, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_update_open_home
    put :update, :id => 1, :open_home => { }, :habitat_id => @habitat.id
    assert_redirected_to habitat_open_home_path(assigns(:open_home))
  end
  
  def test_should_destroy_open_home
    old_count = OpenHome.count
    delete :destroy, :id => 1, :habitat_id => @habitat.id
    assert_equal old_count-1, OpenHome.count
    
    assert_redirected_to habitat_open_homes_path
  end
end
