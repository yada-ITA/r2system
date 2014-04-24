require 'test_helper'

class InstallplacesControllerTest < ActionController::TestCase
  setup do
    @installplace = installplaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:installplaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create installplace" do
    assert_difference('Installplace.count') do
      post :create, installplace: { address: @installplace.address, destination_name: @installplace.destination_name, name: @installplace.name, phone_no: @installplace.phone_no, postcode: @installplace.postcode }
    end

    assert_redirected_to installplace_path(assigns(:installplace))
  end

  test "should show installplace" do
    get :show, id: @installplace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @installplace
    assert_response :success
  end

  test "should update installplace" do
    patch :update, id: @installplace, installplace: { address: @installplace.address, destination_name: @installplace.destination_name, name: @installplace.name, phone_no: @installplace.phone_no, postcode: @installplace.postcode }
    assert_redirected_to installplace_path(assigns(:installplace))
  end

  test "should destroy installplace" do
    assert_difference('Installplace.count', -1) do
      delete :destroy, id: @installplace
    end

    assert_redirected_to installplaces_path
  end
end
