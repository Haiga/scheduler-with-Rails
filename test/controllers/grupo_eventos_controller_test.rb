require 'test_helper'

class GrupoEventosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grupo_evento = grupo_eventos(:one)
  end

  test "should get index" do
    get grupo_eventos_url
    assert_response :success
  end

  test "should get new" do
    get new_grupo_evento_url
    assert_response :success
  end

  test "should create grupo_evento" do
    assert_difference('GrupoEvento.count') do
      post grupo_eventos_url, params: { grupo_evento: { descricao: @grupo_evento.descricao, nome: @grupo_evento.nome, prioridade: @grupo_evento.prioridade, user_id: @grupo_evento.user_id } }
    end

    assert_redirected_to grupo_evento_url(GrupoEvento.last)
  end

  test "should show grupo_evento" do
    get grupo_evento_url(@grupo_evento)
    assert_response :success
  end

  test "should get edit" do
    get edit_grupo_evento_url(@grupo_evento)
    assert_response :success
  end

  test "should update grupo_evento" do
    patch grupo_evento_url(@grupo_evento), params: { grupo_evento: { descricao: @grupo_evento.descricao, nome: @grupo_evento.nome, prioridade: @grupo_evento.prioridade, user_id: @grupo_evento.user_id } }
    assert_redirected_to grupo_evento_url(@grupo_evento)
  end

  test "should destroy grupo_evento" do
    assert_difference('GrupoEvento.count', -1) do
      delete grupo_evento_url(@grupo_evento)
    end

    assert_redirected_to grupo_eventos_url
  end
end
