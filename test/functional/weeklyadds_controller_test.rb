require 'test_helper'

class WeeklyaddsControllerTest < ActionController::TestCase
  setup do
    @weeklyadd = weeklyadds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:weeklyadds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create weeklyadd" do
    assert_difference('Weeklyadd.count') do
      post :create, :weeklyadd => @weeklyadd.attributes
    end

    assert_redirected_to weeklyadd_path(assigns(:weeklyadd))
  end

  test "should show weeklyadd" do
    get :show, :id => @weeklyadd.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @weeklyadd.to_param
    assert_response :success
  end

  test "should update weeklyadd" do
    put :update, :id => @weeklyadd.to_param, :weeklyadd => @weeklyadd.attributes
    assert_redirected_to weeklyadd_path(assigns(:weeklyadd))
  end

  test "should destroy weeklyadd" do
    assert_difference('Weeklyadd.count', -1) do
      delete :destroy, :id => @weeklyadd.to_param
    end

    assert_redirected_to weeklyadds_path
  end
end
