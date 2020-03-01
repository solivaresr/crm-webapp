require "application_system_test_case"

class ComunesTest < ApplicationSystemTestCase
  setup do
    @comune = comunes(:one)
  end

  test "visiting the index" do
    visit comunes_url
    assert_selector "h1", text: "Comunes"
  end

  test "creating a Comune" do
    visit comunes_url
    click_on "New Comune"

    fill_in "Name", with: @comune.name
    fill_in "Region", with: @comune.region_id
    click_on "Create Comune"

    assert_text "Comune was successfully created"
    click_on "Back"
  end

  test "updating a Comune" do
    visit comunes_url
    click_on "Edit", match: :first

    fill_in "Name", with: @comune.name
    fill_in "Region", with: @comune.region_id
    click_on "Update Comune"

    assert_text "Comune was successfully updated"
    click_on "Back"
  end

  test "destroying a Comune" do
    visit comunes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comune was successfully destroyed"
  end
end
