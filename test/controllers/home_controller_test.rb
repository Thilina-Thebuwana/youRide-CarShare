require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
<<<<<<< HEAD
    get home_index_url
=======
    get root_url
>>>>>>> Connor
    assert_response :success
  end

end
