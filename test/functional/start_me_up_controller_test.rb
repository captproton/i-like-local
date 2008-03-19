require File.dirname(__FILE__) + '/../test_helper'
require 'start_me_up_controller'

# Re-raise errors caught by the controller.
class StartMeUpController; def rescue_action(e) raise e end; end

class StartMeUpControllerTest < Test::Unit::TestCase
  def setup
    @controller = StartMeUpController.new
    @request    = ActionController::TestRequest.new
    @response   = ActionController::TestResponse.new
  end

  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
