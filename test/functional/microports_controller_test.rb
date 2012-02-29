require 'test_helper'

class MicroportsControllerTest < ActionController::TestCase
  setup do
    @microport = microports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microport" do
    assert_difference('Microport.count') do
      post :create, microport: @microport.attributes
    end

    assert_redirected_to microport_path(assigns(:microport))
  end

  test "should show microport" do
    get :show, id: @microport
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microport
    assert_response :success
  end

  test "should update microport" do
    put :update, id: @microport, microport: @microport.attributes
    assert_redirected_to microport_path(assigns(:microport))
  end

  test "should destroy microport" do
    assert_difference('Microport.count', -1) do
      delete :destroy, id: @microport
    end

    assert_redirected_to microports_path
  end
end
