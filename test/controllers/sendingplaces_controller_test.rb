require 'test_helper'

class SendingplacesControllerTest < ActionController::TestCase
  setup do
    @sendingplace = sendingplaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sendingplaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sendingplace" do
    assert_difference('Sendingplace.count') do
      post :create, sendingplace: { address: @sendingplace.address, branch_id: @sendingplace.branch_id, destination_name: @sendingplace.destination_name, name: @sendingplace.name, phone_no: @sendingplace.phone_no, postcode: @sendingplace.postcode }
    end

    assert_redirected_to sendingplace_path(assigns(:sendingplace))
  end

  test "should show sendingplace" do
    get :show, id: @sendingplace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sendingplace
    assert_response :success
  end

  test "should update sendingplace" do
    patch :update, id: @sendingplace, sendingplace: { address: @sendingplace.address, branch_id: @sendingplace.branch_id, destination_name: @sendingplace.destination_name, name: @sendingplace.name, phone_no: @sendingplace.phone_no, postcode: @sendingplace.postcode }
    assert_redirected_to sendingplace_path(assigns(:sendingplace))
  end

  test "should destroy sendingplace" do
    assert_difference('Sendingplace.count', -1) do
      delete :destroy, id: @sendingplace
    end

    assert_redirected_to sendingplaces_path
  end
end
