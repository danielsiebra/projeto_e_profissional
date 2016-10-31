require 'test_helper'

class ServicosControllerTest < ActionController::TestCase
  setup do
    @servico = servicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servico" do
    assert_difference('Servico.count') do
      post :create, servico: { nome: @servico.nome, prazo: @servico.prazo, preco: @servico.preco, profissional_id: @servico.profissional_id, registros_servicos_realizado_id: @servico.registros_servicos_realizado_id }
    end

    assert_redirected_to servico_path(assigns(:servico))
  end

  test "should show servico" do
    get :show, id: @servico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servico
    assert_response :success
  end

  test "should update servico" do
    patch :update, id: @servico, servico: { nome: @servico.nome, prazo: @servico.prazo, preco: @servico.preco, profissional_id: @servico.profissional_id, registros_servicos_realizado_id: @servico.registros_servicos_realizado_id }
    assert_redirected_to servico_path(assigns(:servico))
  end

  test "should destroy servico" do
    assert_difference('Servico.count', -1) do
      delete :destroy, id: @servico
    end

    assert_redirected_to servicos_path
  end
end
