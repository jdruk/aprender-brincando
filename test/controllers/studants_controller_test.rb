require 'test_helper'

class StudantsControllerTest < ActionController::TestCase
  setup do
    @studant = studants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studant" do
    assert_difference('Studant.count') do
      post :create, studant: { description: @studant.description, name: @studant.name, old: @studant.old }
    end

    assert_redirected_to studant_path(assigns(:studant))
  end

  test "should show studant" do
    get :show, id: @studant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @studant
    assert_response :success
  end

  test "should update studant" do
    patch :update, id: @studant, studant: { description: @studant.description, name: @studant.name, old: @studant.old }
    assert_redirected_to studant_path(assigns(:studant))
  end

  test "should destroy studant" do
    assert_difference('Studant.count', -1) do
      delete :destroy, id: @studant
    end

    assert_redirected_to studants_path
  end
end
