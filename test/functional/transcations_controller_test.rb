require 'test_helper'

class TranscationsControllerTest < ActionController::TestCase
  setup do
    @transcation = transcations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transcations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transcation" do
    assert_difference('Transcation.count') do
      post :create, transcation: { : @transcation., : @transcation., amount: @transcation.amount, title: @transcation.title }
    end

    assert_redirected_to transcation_path(assigns(:transcation))
  end

  test "should show transcation" do
    get :show, id: @transcation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transcation
    assert_response :success
  end

  test "should update transcation" do
    put :update, id: @transcation, transcation: { : @transcation., : @transcation., amount: @transcation.amount, title: @transcation.title }
    assert_redirected_to transcation_path(assigns(:transcation))
  end

  test "should destroy transcation" do
    assert_difference('Transcation.count', -1) do
      delete :destroy, id: @transcation
    end

    assert_redirected_to transcations_path
  end
end
