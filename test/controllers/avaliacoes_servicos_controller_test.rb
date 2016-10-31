require 'test_helper'

class AvaliacoesServicosControllerTest < ActionController::TestCase
  setup do
    @avaliacoes_servico = avaliacoes_servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:avaliacoes_servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create avaliacoes_servico" do
    assert_difference('AvaliacoesServico.count') do
      post :create, avaliacoes_servico: { avaliacao: @avaliacoes_servico.avaliacao, comentario: @avaliacoes_servico.comentario, papel: @avaliacoes_servico.papel }
    end

    assert_redirected_to avaliacoes_servico_path(assigns(:avaliacoes_servico))
  end

  test "should show avaliacoes_servico" do
    get :show, id: @avaliacoes_servico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @avaliacoes_servico
    assert_response :success
  end

  test "should update avaliacoes_servico" do
    patch :update, id: @avaliacoes_servico, avaliacoes_servico: { avaliacao: @avaliacoes_servico.avaliacao, comentario: @avaliacoes_servico.comentario, papel: @avaliacoes_servico.papel }
    assert_redirected_to avaliacoes_servico_path(assigns(:avaliacoes_servico))
  end

  test "should destroy avaliacoes_servico" do
    assert_difference('AvaliacoesServico.count', -1) do
      delete :destroy, id: @avaliacoes_servico
    end

    assert_redirected_to avaliacoes_servicos_path
  end
end
