require 'test_helper'

class SolicitacoesAvaliacoesServicosControllerTest < ActionController::TestCase
  setup do
    @solicitacoes_avaliacoes_servico = solicitacoes_avaliacoes_servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicitacoes_avaliacoes_servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitacoes_avaliacoes_servico" do
    assert_difference('SolicitacoesAvaliacoesServico.count') do
      post :create, solicitacoes_avaliacoes_servico: { email: @solicitacoes_avaliacoes_servico.email, nome_cliente: @solicitacoes_avaliacoes_servico.nome_cliente, papel: @solicitacoes_avaliacoes_servico.papel, usuario_id: @solicitacoes_avaliacoes_servico.usuario_id }
    end

    assert_redirected_to solicitacoes_avaliacoes_servico_path(assigns(:solicitacoes_avaliacoes_servico))
  end

  test "should show solicitacoes_avaliacoes_servico" do
    get :show, id: @solicitacoes_avaliacoes_servico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitacoes_avaliacoes_servico
    assert_response :success
  end

  test "should update solicitacoes_avaliacoes_servico" do
    patch :update, id: @solicitacoes_avaliacoes_servico, solicitacoes_avaliacoes_servico: { email: @solicitacoes_avaliacoes_servico.email, nome_cliente: @solicitacoes_avaliacoes_servico.nome_cliente, papel: @solicitacoes_avaliacoes_servico.papel, usuario_id: @solicitacoes_avaliacoes_servico.usuario_id }
    assert_redirected_to solicitacoes_avaliacoes_servico_path(assigns(:solicitacoes_avaliacoes_servico))
  end

  test "should destroy solicitacoes_avaliacoes_servico" do
    assert_difference('SolicitacoesAvaliacoesServico.count', -1) do
      delete :destroy, id: @solicitacoes_avaliacoes_servico
    end

    assert_redirected_to solicitacoes_avaliacoes_servicos_path
  end
end
