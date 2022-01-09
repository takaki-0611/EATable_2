require 'test_helper'

class Public::CoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get public_courses_edit_url
    assert_response :success
  end

  test "should get create" do
    get public_courses_create_url
    assert_response :success
  end

  test "should get update" do
    get public_courses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get public_courses_destroy_url
    assert_response :success
  end

end
