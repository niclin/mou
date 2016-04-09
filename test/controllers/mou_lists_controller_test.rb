require 'test_helper'

class MouListsControllerTest < ActionController::TestCase
  setup do
    @mou_list = mou_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mou_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mou_list" do
    assert_difference('MouList.count') do
      post :create, mou_list: { description: @mou_list.description, title: @mou_list.title }
    end

    assert_redirected_to mou_list_path(assigns(:mou_list))
  end

  test "should show mou_list" do
    get :show, id: @mou_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mou_list
    assert_response :success
  end

  test "should update mou_list" do
    patch :update, id: @mou_list, mou_list: { description: @mou_list.description, title: @mou_list.title }
    assert_redirected_to mou_list_path(assigns(:mou_list))
  end

  test "should destroy mou_list" do
    assert_difference('MouList.count', -1) do
      delete :destroy, id: @mou_list
    end

    assert_redirected_to mou_lists_path
  end
end
