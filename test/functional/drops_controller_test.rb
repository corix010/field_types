require 'test_helper'

class DropsControllerTest < ActionController::TestCase
  setup do
    @drop = drops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drop" do
    assert_difference('Drop.count') do
      post :create, drop: @drop.attributes
    end

    assert_redirected_to drop_path(assigns(:drop))
  end

  test "should show drop" do
    get :show, id: @drop.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drop.to_param
    assert_response :success
  end

  test "should update drop" do
    put :update, id: @drop.to_param, drop: @drop.attributes
    assert_redirected_to drop_path(assigns(:drop))
  end

  test "should destroy drop" do
    assert_difference('Drop.count', -1) do
      delete :destroy, id: @drop.to_param
    end

    assert_redirected_to drops_path
  end
end
