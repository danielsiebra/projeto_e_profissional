require 'test_helper'

class ProfissoesBuscasControllerTest < ActionController::TestCase
  setup do
    @profissoes_busca = profissoes_buscas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profissoes_buscas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profissoes_busca" do
    assert_difference('ProfissoesBusca.count') do
      post :create, profissoes_busca: { nome: @profissoes_busca.nome }
    end

    assert_redirected_to profissoes_busca_path(assigns(:profissoes_busca))
  end

  test "should show profissoes_busca" do
    get :show, id: @profissoes_busca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profissoes_busca
    assert_response :success
  end

  test "should update profissoes_busca" do
    patch :update, id: @profissoes_busca, profissoes_busca: { nome: @profissoes_busca.nome }
    assert_redirected_to profissoes_busca_path(assigns(:profissoes_busca))
  end

  test "should destroy profissoes_busca" do
    assert_difference('ProfissoesBusca.count', -1) do
      delete :destroy, id: @profissoes_busca
    end

    assert_redirected_to profissoes_buscas_path
  end
end
