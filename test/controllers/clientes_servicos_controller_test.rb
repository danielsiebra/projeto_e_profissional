require 'test_helper'

class ClientesServicosControllerTest < ActionController::TestCase
  setup do
    @clientes_servico = clientes_servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes_servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clientes_servico" do
    assert_difference('ClientesServico.count') do
      post :create, clientes_servico: { email: @clientes_servico.email, nome: @clientes_servico.nome }
    end

    assert_redirected_to clientes_servico_path(assigns(:clientes_servico))
  end

  test "should show clientes_servico" do
    get :show, id: @clientes_servico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clientes_servico
    assert_response :success
  end

  test "should update clientes_servico" do
    patch :update, id: @clientes_servico, clientes_servico: { email: @clientes_servico.email, nome: @clientes_servico.nome }
    assert_redirected_to clientes_servico_path(assigns(:clientes_servico))
  end

  test "should destroy clientes_servico" do
    assert_difference('ClientesServico.count', -1) do
      delete :destroy, id: @clientes_servico
    end

    assert_redirected_to clientes_servicos_path
  end
end
