require 'test_helper'

class ExhibitorCategoriesControllerTest < ActionController::TestCase
  setup do
    @exhibitor_category = exhibitor_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitor_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibitor_category" do
    assert_difference('ExhibitorCategory.count') do
      post :create, exhibitor_category: { name: @exhibitor_category.name }
    end

    assert_redirected_to exhibitor_category_path(assigns(:exhibitor_category))
  end

  test "should show exhibitor_category" do
    get :show, id: @exhibitor_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibitor_category
    assert_response :success
  end

  test "should update exhibitor_category" do
    put :update, id: @exhibitor_category, exhibitor_category: { name: @exhibitor_category.name }
    assert_redirected_to exhibitor_category_path(assigns(:exhibitor_category))
  end

  test "should destroy exhibitor_category" do
    assert_difference('ExhibitorCategory.count', -1) do
      delete :destroy, id: @exhibitor_category
    end

    assert_redirected_to exhibitor_categories_path
  end
end
