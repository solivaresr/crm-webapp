require 'test_helper'

class PoliciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @policy = policies(:one)
  end

  test "should get index" do
    get policies_url
    assert_response :success
  end

  test "should get new" do
    get new_policy_url
    assert_response :success
  end

  test "should create policy" do
    assert_difference('Policy.count') do
      post policies_url, params: { policy: { client_id: @policy.client_id, comision: @policy.comision, end_date: @policy.end_date, payment_type: @policy.payment_type, prime: @policy.prime, product_id: @policy.product_id, sale_executive_id: @policy.sale_executive_id, start_date: @policy.start_date } }
    end

    assert_redirected_to policy_url(Policy.last)
  end

  test "should show policy" do
    get policy_url(@policy)
    assert_response :success
  end

  test "should get edit" do
    get edit_policy_url(@policy)
    assert_response :success
  end

  test "should update policy" do
    patch policy_url(@policy), params: { policy: { client_id: @policy.client_id, comision: @policy.comision, end_date: @policy.end_date, payment_type: @policy.payment_type, prime: @policy.prime, product_id: @policy.product_id, sale_executive_id: @policy.sale_executive_id, start_date: @policy.start_date } }
    assert_redirected_to policy_url(@policy)
  end

  test "should destroy policy" do
    assert_difference('Policy.count', -1) do
      delete policy_url(@policy)
    end

    assert_redirected_to policies_url
  end
end
