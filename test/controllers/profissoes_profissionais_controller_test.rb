require 'test_helper'

class ProfissoesProfissionaisControllerTest < ActionController::TestCase
  setup do
    @profissoes_profissional = profissoes_profissionais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profissoes_profissionais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profissoes_profissional" do
    assert_difference('ProfissoesProfissional.count') do
      post :create, profissoes_profissional: { areas_profissional_id: @profissoes_profissional.areas_profissional_id, profissao_id: @profissoes_profissional.profissao_id }
    end

    assert_redirected_to profissoes_profissional_path(assigns(:profissoes_profissional))
  end

  test "should show profissoes_profissional" do
    get :show, id: @profissoes_profissional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profissoes_profissional
    assert_response :success
  end

  test "should update profissoes_profissional" do
    patch :update, id: @profissoes_profissional, profissoes_profissional: { areas_profissional_id: @profissoes_profissional.areas_profissional_id, profissao_id: @profissoes_profissional.profissao_id }
    assert_redirected_to profissoes_profissional_path(assigns(:profissoes_profissional))
  end

  test "should destroy profissoes_profissional" do
    assert_difference('ProfissoesProfissional.count', -1) do
      delete :destroy, id: @profissoes_profissional
    end

    assert_redirected_to profissoes_profissionais_path
  end
end
