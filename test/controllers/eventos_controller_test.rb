require 'test_helper'

class EventosControllerTest < ActionController::TestCase
  setup do
    @evento = eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create evento" do
    assert_difference('Evento.count') do
      post :create, evento: { data: @evento.data, data_terminio: @evento.data_terminio, descricao: @evento.descricao, email_para_contato: @evento.email_para_contato, facebook: @evento.facebook, nome: @evento.nome, site: @evento.site }
    end

    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should show evento" do
    get :show, id: @evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @evento
    assert_response :success
  end

  test "should update evento" do
    patch :update, id: @evento, evento: { data: @evento.data, data_terminio: @evento.data_terminio, descricao: @evento.descricao, email_para_contato: @evento.email_para_contato, facebook: @evento.facebook, nome: @evento.nome, site: @evento.site }
    assert_redirected_to evento_path(assigns(:evento))
  end

  test "should destroy evento" do
    assert_difference('Evento.count', -1) do
      delete :destroy, id: @evento
    end

    assert_redirected_to eventos_path
  end
end
