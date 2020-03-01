require "application_system_test_case"

class SaleExecutivesTest < ApplicationSystemTestCase
  setup do
    @sale_executive = sale_executives(:one)
  end

  test "visiting the index" do
    visit sale_executives_url
    assert_selector "h1", text: "Sale Executives"
  end

  test "creating a Sale executive" do
    visit sale_executives_url
    click_on "New Sale Executive"

    fill_in "Email", with: @sale_executive.email
    fill_in "Name", with: @sale_executive.name
    fill_in "Password", with: @sale_executive.password
    click_on "Create Sale executive"

    assert_text "Sale executive was successfully created"
    click_on "Back"
  end

  test "updating a Sale executive" do
    visit sale_executives_url
    click_on "Edit", match: :first

    fill_in "Email", with: @sale_executive.email
    fill_in "Name", with: @sale_executive.name
    fill_in "Password", with: @sale_executive.password
    click_on "Update Sale executive"

    assert_text "Sale executive was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale executive" do
    visit sale_executives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale executive was successfully destroyed"
  end
end
