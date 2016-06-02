require 'test_helper'

class GradeCommentsControllerTest < ActionController::TestCase
  setup do
    @grade_comment = grade_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grade_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grade_comment" do
    assert_difference('GradeComment.count') do
      post :create, grade_comment: {  }
    end

    assert_redirected_to grade_comment_path(assigns(:grade_comment))
  end

  test "should show grade_comment" do
    get :show, id: @grade_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @grade_comment
    assert_response :success
  end

  test "should update grade_comment" do
    patch :update, id: @grade_comment, grade_comment: {  }
    assert_redirected_to grade_comment_path(assigns(:grade_comment))
  end

  test "should destroy grade_comment" do
    assert_difference('GradeComment.count', -1) do
      delete :destroy, id: @grade_comment
    end

    assert_redirected_to grade_comments_path
  end
end
