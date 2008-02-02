require File.dirname(__FILE__) + '/../test_helper'
require 'offices_controller'

# Re-raise errors caught by the controller.
class OfficesController; def rescue_action(e) raise e end; end

class OfficesControllerTest < Test::Unit::TestCase
  fixtures :offices

  def setup
    @controller = OfficesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @habitat    = habitats(:one)
    
  end

  def test_should_get_index
    get :index, :habitat_id => @habitat.id
    assert_response :success
    assert assigns(:offices)
  end

  def test_should_get_new
    get :new, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_create_office
    old_count = Office.count
    post :create, :office => { }, :habitat_id => @habitat.id
    assert_equal old_count+1, Office.count
    
    assert_redirected_to habitat_office_path(assigns(:office))
  end

  def test_should_show_office
    get :show, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_update_office
    put :update, :id => 1, :office => { }, :habitat_id => @habitat.id
    assert_redirected_to habitat_office_path(assigns(:office))
  end
  
  def test_should_destroy_office
    old_count = Office.count
    delete :destroy, :id => 1, :habitat_id => @habitat.id
    assert_equal old_count-1, Office.count
    
    assert_redirected_to habitat_offices_path
  end
end
