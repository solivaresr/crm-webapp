require "application_system_test_case"

class PoliciesTest < ApplicationSystemTestCase
  setup do
    @policy = policies(:one)
  end

  test "visiting the index" do
    visit policies_url
    assert_selector "h1", text: "Policies"
  end

  test "creating a Policy" do
    visit policies_url
    click_on "New Policy"

    fill_in "Client", with: @policy.client_id
    fill_in "Comision", with: @policy.comision
    fill_in "End date", with: @policy.end_date
    fill_in "Payment type", with: @policy.payment_type
    fill_in "Prime", with: @policy.prime
    fill_in "Product", with: @policy.product_id
    fill_in "Sale executive", with: @policy.sale_executive_id
    fill_in "Start date", with: @policy.start_date
    click_on "Create Policy"

    assert_text "Policy was successfully created"
    click_on "Back"
  end

  test "updating a Policy" do
    visit policies_url
    click_on "Edit", match: :first

    fill_in "Client", with: @policy.client_id
    fill_in "Comision", with: @policy.comision
    fill_in "End date", with: @policy.end_date
    fill_in "Payment type", with: @policy.payment_type
    fill_in "Prime", with: @policy.prime
    fill_in "Product", with: @policy.product_id
    fill_in "Sale executive", with: @policy.sale_executive_id
    fill_in "Start date", with: @policy.start_date
    click_on "Update Policy"

    assert_text "Policy was successfully updated"
    click_on "Back"
  end

  test "destroying a Policy" do
    visit policies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Policy was successfully destroyed"
  end
end
