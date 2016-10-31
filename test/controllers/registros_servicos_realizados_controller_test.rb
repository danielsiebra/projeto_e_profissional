require 'test_helper'

class RegistrosServicosRealizadosControllerTest < ActionController::TestCase
  setup do
    @registros_servicos_realizado = registros_servicos_realizados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registros_servicos_realizados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registros_servicos_realizado" do
    assert_difference('RegistrosServicosRealizado.count') do
      post :create, registros_servicos_realizado: { ate: @registros_servicos_realizado.ate, de: @registros_servicos_realizado.de, descricao_servico: @registros_servicos_realizado.descricao_servico, email_cliente: @registros_servicos_realizado.email_cliente, nome_cliente: @registros_servicos_realizado.nome_cliente, profissional_id: @registros_servicos_realizado.profissional_id, titulo_servico: @registros_servicos_realizado.titulo_servico }
    end

    assert_redirected_to registros_servicos_realizado_path(assigns(:registros_servicos_realizado))
  end

  test "should show registros_servicos_realizado" do
    get :show, id: @registros_servicos_realizado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registros_servicos_realizado
    assert_response :success
  end

  test "should update registros_servicos_realizado" do
    patch :update, id: @registros_servicos_realizado, registros_servicos_realizado: { ate: @registros_servicos_realizado.ate, de: @registros_servicos_realizado.de, descricao_servico: @registros_servicos_realizado.descricao_servico, email_cliente: @registros_servicos_realizado.email_cliente, nome_cliente: @registros_servicos_realizado.nome_cliente, profissional_id: @registros_servicos_realizado.profissional_id, titulo_servico: @registros_servicos_realizado.titulo_servico }
    assert_redirected_to registros_servicos_realizado_path(assigns(:registros_servicos_realizado))
  end

  test "should destroy registros_servicos_realizado" do
    assert_difference('RegistrosServicosRealizado.count', -1) do
      delete :destroy, id: @registros_servicos_realizado
    end

    assert_redirected_to registros_servicos_realizados_path
  end
end
