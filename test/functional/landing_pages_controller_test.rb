require File.dirname(__FILE__) + '/../test_helper'
require 'landing_pages_controller'

# Re-raise errors caught by the controller.
class LandingPagesController; def rescue_action(e) raise e end; end

class LandingPagesControllerTest < Test::Unit::TestCase
  fixtures :landing_pages

  def setup
    @controller = LandingPagesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @habitat    = habitats(:one)
  end

  def test_should_get_index
    get :index, :habitat_id => @habitat.id
    assert_response :success
    assert assigns(:landing_pages)
  end

  def test_should_get_new
    get :new, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_create_landing_page
    old_count = LandingPage.count
    post :create, :landing_page => { }, :habitat_id => @habitat.id
    assert_equal old_count+1, LandingPage.count
    
    assert_redirected_to habitat_landing_page_path(assigns(:landing_page))
  end

  def test_should_show_landing_page
    get :show, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_update_landing_page
    put :update, :id => 1, :landing_page => { }, :habitat_id => @habitat.id
    assert_redirected_to habitat_landing_page_path(assigns(:landing_page))
  end
  
  def test_should_destroy_landing_page
    old_count = LandingPage.count
    delete :destroy, :id => 1, :habitat_id => @habitat.id
    assert_equal old_count-1, LandingPage.count
    
    assert_redirected_to habitat_landing_pages_path
  end
end
