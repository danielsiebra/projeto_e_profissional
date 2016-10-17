require 'test_helper'

class ProfissionaisControllerTest < ActionController::TestCase
  setup do
    @profissional = profissionais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profissionais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profissional" do
    assert_difference('Profissional.count') do
      post :create, profissional: { areas_profissional_id: @profissional.areas_profissional_id, celular: @profissional.celular, email: @profissional.email, endereco: @profissional.endereco, nome_comercial: @profissional.nome_comercial, nome_completo: @profissional.nome_completo, profissoes_profissional_id: @profissional.profissoes_profissional_id, whatsapp: @profissional.whatsapp }
    end

    assert_redirected_to profissional_path(assigns(:profissional))
  end

  test "should show profissional" do
    get :show, id: @profissional
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profissional
    assert_response :success
  end

  test "should update profissional" do
    patch :update, id: @profissional, profissional: { areas_profissional_id: @profissional.areas_profissional_id, celular: @profissional.celular, email: @profissional.email, endereco: @profissional.endereco, nome_comercial: @profissional.nome_comercial, nome_completo: @profissional.nome_completo, profissoes_profissional_id: @profissional.profissoes_profissional_id, whatsapp: @profissional.whatsapp }
    assert_redirected_to profissional_path(assigns(:profissional))
  end

  test "should destroy profissional" do
    assert_difference('Profissional.count', -1) do
      delete :destroy, id: @profissional
    end

    assert_redirected_to profissionais_path
  end
end
