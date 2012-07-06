require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get daily" do
    get :daily
    assert_response :success
  end

  test "should get edit_today" do
    get :edit_today
    assert_response :success
  end

end
