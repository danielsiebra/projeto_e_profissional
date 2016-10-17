require 'test_helper'

class BuscasProfissionaisControllerTest < ActionController::TestCase
  setup do
    @buscas_profissional = buscas_profissionais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buscas_profissionais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buscas_profissional" do
    assert_difference('BuscasProfissional.count') do
      post :create, buscas_profissional: {  }
    end

    assert_redirected_to buscas_profissional_path(assigns(:buscas_profissional))
  end

  test "should show buscas_profissional" do
    get :show, id: @buscas_profissional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buscas_profissional
    assert_response :success
  end

  test "should update buscas_profissional" do
    patch :update, id: @buscas_profissional, buscas_profissional: {  }
    assert_redirected_to buscas_profissional_path(assigns(:buscas_profissional))
  end

  test "should destroy buscas_profissional" do
    assert_difference('BuscasProfissional.count', -1) do
      delete :destroy, id: @buscas_profissional
    end

    assert_redirected_to buscas_profissionais_path
  end
end
