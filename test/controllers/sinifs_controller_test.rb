require 'test_helper'

class SinifsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sinif = sinifs(:one)
  end

  test "should get index" do
    get sinifs_url
    assert_response :success
  end

  test "should get new" do
    get new_sinif_url
    assert_response :success
  end

  test "should create sinif" do
    assert_difference('Sinif.count') do
      post sinifs_url, params: { sinif: { adi: @sinif.adi } }
    end

    assert_redirected_to sinif_url(Sinif.last)
  end

  test "should show sinif" do
    get sinif_url(@sinif)
    assert_response :success
  end

  test "should get edit" do
    get edit_sinif_url(@sinif)
    assert_response :success
  end

  test "should update sinif" do
    patch sinif_url(@sinif), params: { sinif: { adi: @sinif.adi } }
    assert_redirected_to sinif_url(@sinif)
  end

  test "should destroy sinif" do
    assert_difference('Sinif.count', -1) do
      delete sinif_url(@sinif)
    end

    assert_redirected_to sinifs_url
  end
end
