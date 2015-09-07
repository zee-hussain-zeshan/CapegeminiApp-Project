require 'test_helper'

class AttendsControllerTest < ActionController::TestCase
  setup do
    @attend = attends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attend" do
    assert_difference('Attend.count') do
      post :create, attend: { session_id: @attend.session_id, student_id: @attend.student_id }
    end

    assert_redirected_to attend_path(assigns(:attend))
  end

  test "should show attend" do
    get :show, id: @attend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attend
    assert_response :success
  end

  test "should update attend" do
    patch :update, id: @attend, attend: { session_id: @attend.session_id, student_id: @attend.student_id }
    assert_redirected_to attend_path(assigns(:attend))
  end

  test "should destroy attend" do
    assert_difference('Attend.count', -1) do
      delete :destroy, id: @attend
    end

    assert_redirected_to attends_path
  end
end
