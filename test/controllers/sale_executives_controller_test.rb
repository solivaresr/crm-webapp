require 'test_helper'

class SaleExecutivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_executive = sale_executives(:one)
  end

  test "should get index" do
    get sale_executives_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_executive_url
    assert_response :success
  end

  test "should create sale_executive" do
    assert_difference('SaleExecutive.count') do
      post sale_executives_url, params: { sale_executive: { email: @sale_executive.email, name: @sale_executive.name, password: @sale_executive.password } }
    end

    assert_redirected_to sale_executive_url(SaleExecutive.last)
  end

  test "should show sale_executive" do
    get sale_executive_url(@sale_executive)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_executive_url(@sale_executive)
    assert_response :success
  end

  test "should update sale_executive" do
    patch sale_executive_url(@sale_executive), params: { sale_executive: { email: @sale_executive.email, name: @sale_executive.name, password: @sale_executive.password } }
    assert_redirected_to sale_executive_url(@sale_executive)
  end

  test "should destroy sale_executive" do
    assert_difference('SaleExecutive.count', -1) do
      delete sale_executive_url(@sale_executive)
    end

    assert_redirected_to sale_executives_url
  end
end
