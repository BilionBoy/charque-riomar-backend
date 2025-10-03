require "application_system_test_case"

class SetoresTest < ApplicationSystemTestCase
  setup do
    @setor = setores(:one)
  end

  test "visiting the index" do
    visit setores_url
    assert_selector "h1", text: "Setores"
  end

  test "should create setor" do
    visit setores_url
    click_on "New setor"

    fill_in "Nome", with: @setor.nome
    click_on "Create Setor"

    assert_text "Setor was successfully created"
    click_on "Back"
  end

  test "should update Setor" do
    visit setor_url(@setor)
    click_on "Edit this setor", match: :first

    fill_in "Nome", with: @setor.nome
    click_on "Update Setor"

    assert_text "Setor was successfully updated"
    click_on "Back"
  end

  test "should destroy Setor" do
    visit setor_url(@setor)
    click_on "Destroy this setor", match: :first

    assert_text "Setor was successfully destroyed"
  end
end
