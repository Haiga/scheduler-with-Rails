require "application_system_test_case"

class GrupoEventosTest < ApplicationSystemTestCase
  setup do
    @grupo_evento = grupo_eventos(:one)
  end

  test "visiting the index" do
    visit grupo_eventos_url
    assert_selector "h1", text: "Grupo Eventos"
  end

  test "creating a Grupo evento" do
    visit grupo_eventos_url
    click_on "New Grupo Evento"

    fill_in "Descricao", with: @grupo_evento.descricao
    fill_in "Nome", with: @grupo_evento.nome
    fill_in "Prioridade", with: @grupo_evento.prioridade
    fill_in "User", with: @grupo_evento.user_id
    click_on "Create Grupo evento"

    assert_text "Grupo evento was successfully created"
    click_on "Back"
  end

  test "updating a Grupo evento" do
    visit grupo_eventos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @grupo_evento.descricao
    fill_in "Nome", with: @grupo_evento.nome
    fill_in "Prioridade", with: @grupo_evento.prioridade
    fill_in "User", with: @grupo_evento.user_id
    click_on "Update Grupo evento"

    assert_text "Grupo evento was successfully updated"
    click_on "Back"
  end

  test "destroying a Grupo evento" do
    visit grupo_eventos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grupo evento was successfully destroyed"
  end
end
