require File.dirname(__FILE__) + '/../test_helper'
require 'advertisers_controller'

# Re-raise errors caught by the controller.
class AdvertisersController; def rescue_action(e) raise e end; end

class AdvertisersControllerTest < Test::Unit::TestCase
  fixtures :advertisers

  def setup
    @controller = AdvertisersController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
    
  end

  def test_should_get_index
    get :index
    assert_response :success
    assert assigns(:advertisers)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end
  
  def test_should_create_advertiser
    old_count = Advertiser.count
    post :create, :advertiser => { }
    assert_equal old_count+1, Advertiser.count
    
    assert_redirected_to advertiser_path(assigns(:advertiser))
  end

  def test_should_show_advertiser
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end
  
  def test_should_update_advertiser
    put :update, :id => 1, :advertiser => { }
    assert_redirected_to advertiser_path(assigns(:advertiser))
  end
  
  def test_should_destroy_advertiser
    old_count = Advertiser.count
    delete :destroy, :id => 1
    assert_equal old_count-1, Advertiser.count
    
    assert_redirected_to advertisers_path
  end
end
