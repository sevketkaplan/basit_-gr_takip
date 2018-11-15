require 'test_helper'

class OgretmenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ogretman = ogretmen(:one)
  end

  test "should get index" do
    get ogretmen_url
    assert_response :success
  end

  test "should get new" do
    get new_ogretman_url
    assert_response :success
  end

  test "should create ogretman" do
    assert_difference('Ogretman.count') do
      post ogretmen_url, params: { ogretman: { adi: @ogretman.adi, aldigi_ucret: @ogretman.aldigi_ucret, kan_grubu: @ogretman.kan_grubu, soyadi: @ogretman.soyadi, tc_no: @ogretman.tc_no, tel: @ogretman.tel, tel2: @ogretman.tel2 } }
    end

    assert_redirected_to ogretman_url(Ogretman.last)
  end

  test "should show ogretman" do
    get ogretman_url(@ogretman)
    assert_response :success
  end

  test "should get edit" do
    get edit_ogretman_url(@ogretman)
    assert_response :success
  end

  test "should update ogretman" do
    patch ogretman_url(@ogretman), params: { ogretman: { adi: @ogretman.adi, aldigi_ucret: @ogretman.aldigi_ucret, kan_grubu: @ogretman.kan_grubu, soyadi: @ogretman.soyadi, tc_no: @ogretman.tc_no, tel: @ogretman.tel, tel2: @ogretman.tel2 } }
    assert_redirected_to ogretman_url(@ogretman)
  end

  test "should destroy ogretman" do
    assert_difference('Ogretman.count', -1) do
      delete ogretman_url(@ogretman)
    end

    assert_redirected_to ogretmen_url
  end
end
