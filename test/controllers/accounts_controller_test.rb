require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get wallet_address:strin" do
    get accounts_wallet_address:strin_url
    assert_response :success
  end

  test "should get user:references" do
    get accounts_user:references_url
    assert_response :success
  end

end
