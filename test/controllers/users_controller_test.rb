require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { description: @user.description, email: @user.email, fb_link: @user.fb_link, first_name: @user.first_name, gender: @user.gender, is_admin: @user.is_admin, is_owner: @user.is_owner, last_name: @user.last_name, password_digest: @user.password_digest, phone: @user.phone, picture: @user.picture, user_id: @user.user_id, username: @user.username }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { description: @user.description, email: @user.email, fb_link: @user.fb_link, first_name: @user.first_name, gender: @user.gender, is_admin: @user.is_admin, is_owner: @user.is_owner, last_name: @user.last_name, password_digest: @user.password_digest, phone: @user.phone, picture: @user.picture, user_id: @user.user_id, username: @user.username }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
