require 'test_helper'

class Public::ContactsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_contacts_index_url
    assert_response :success
  end

  test "should get confirm" do
    get public_contacts_confirm_url
    assert_response :success
  end

  test "should get done" do
    get public_contacts_done_url
    assert_response :success
  end

end
