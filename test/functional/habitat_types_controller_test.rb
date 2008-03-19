require File.dirname(__FILE__) + '/../test_helper'
require 'habitat_types_controller'

# Re-raise errors caught by the controller.
class HabitatTypesController; def rescue_action(e) raise e end; end

class HabitatTypesControllerTest < Test::Unit::TestCase
  fixtures :habitat_types

  def setup
    @controller = HabitatTypesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:habitat_types)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_habitat_type
    old_count = HabitatType.count
    post :create, :habitat_type => { }
    assert_equal old_count+1, HabitatType.count
    
    assert_redirected_to habitat_type_path(assigns(:habitat_type))
  end

  def test_should_show_habitat_type
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_habitat_type
    put :update, :id => 1, :habitat_type => { }
    assert_redirected_to habitat_type_path(assigns(:habitat_type))
  end
  
  def test_should_destroy_habitat_type
    old_count = HabitatType.count
    delete :destroy, :id => 1
    assert_equal old_count-1, HabitatType.count
    
    assert_redirected_to habitat_types_path
  end
end
