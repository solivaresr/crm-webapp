require 'test_helper'

class ComunesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comune = comunes(:one)
  end

  test "should get index" do
    get comunes_url
    assert_response :success
  end

  test "should get new" do
    get new_comune_url
    assert_response :success
  end

  test "should create comune" do
    assert_difference('Comune.count') do
      post comunes_url, params: { comune: { name: @comune.name, region_id: @comune.region_id } }
    end

    assert_redirected_to comune_url(Comune.last)
  end

  test "should show comune" do
    get comune_url(@comune)
    assert_response :success
  end

  test "should get edit" do
    get edit_comune_url(@comune)
    assert_response :success
  end

  test "should update comune" do
    patch comune_url(@comune), params: { comune: { name: @comune.name, region_id: @comune.region_id } }
    assert_redirected_to comune_url(@comune)
  end

  test "should destroy comune" do
    assert_difference('Comune.count', -1) do
      delete comune_url(@comune)
    end

    assert_redirected_to comunes_url
  end
end
