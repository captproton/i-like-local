require File.dirname(__FILE__) + '/../test_helper'
require 'franchises_controller'

# Re-raise errors caught by the controller.
class FranchisesController; def rescue_action(e) raise e end; end

class FranchisesControllerTest < Test::Unit::TestCase
  fixtures :franchises

  def setup
    @controller = FranchisesController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
    @habitat    = habitats(:one)
    
  end

  def test_should_get_index
    get :index, :habitat_id => @habitat.id
    assert_response :success
    assert assigns(:franchises)
  end

  def test_should_get_new
    get :new, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_create_franchise
    old_count = Franchise.count
    post :create, :franchise => { }, :habitat_id => @habitat.id
    assert_equal old_count+1, Franchise.count
    
    assert_redirected_to habitat_franchise_path(assigns(:franchise))
  end

  def test_should_show_franchise
    get :show, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1, :habitat_id => @habitat.id
    assert_response :success
  end
  
  def test_should_update_franchise
    put :update, :id => 1, :franchise => { }, :habitat_id => @habitat.id
    assert_redirected_to habitat_franchises_path(assigns(:franchise))
  end
  
  def test_should_destroy_franchise
    old_count = Franchise.count
    delete :destroy, :id => 1, :habitat_id => @habitat.id
    assert_equal old_count-1, Franchise.count
    
    assert_redirected_to habitat_franchises_path
  end
end
