require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
<<<<<<< HEAD
<<<<<<< HEAD
    get home_index_url
=======
    get root_url
>>>>>>> Connor
=======
    get root_url
>>>>>>> mehmed
    assert_response :success
  end

end
