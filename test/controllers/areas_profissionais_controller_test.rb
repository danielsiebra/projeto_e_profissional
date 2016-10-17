require 'test_helper'

class AreasProfissionaisControllerTest < ActionController::TestCase
  setup do
    @areas_profissional = areas_profissionais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:areas_profissionais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create areas_profissional" do
    assert_difference('AreasProfissional.count') do
      post :create, areas_profissional: { area: @areas_profissional.area }
    end

    assert_redirected_to areas_profissional_path(assigns(:areas_profissional))
  end

  test "should show areas_profissional" do
    get :show, id: @areas_profissional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @areas_profissional
    assert_response :success
  end

  test "should update areas_profissional" do
    patch :update, id: @areas_profissional, areas_profissional: { area: @areas_profissional.area }
    assert_redirected_to areas_profissional_path(assigns(:areas_profissional))
  end

  test "should destroy areas_profissional" do
    assert_difference('AreasProfissional.count', -1) do
      delete :destroy, id: @areas_profissional
    end

    assert_redirected_to areas_profissionais_path
  end
end
