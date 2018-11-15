require 'test_helper'

class DevamsizliksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devamsizlik = devamsizliks(:one)
  end

  test "should get index" do
    get devamsizliks_url
    assert_response :success
  end

  test "should get new" do
    get new_devamsizlik_url
    assert_response :success
  end

  test "should create devamsizlik" do
    assert_difference('Devamsizlik.count') do
      post devamsizliks_url, params: { devamsizlik: { ad: @devamsizlik.ad, devamsizlik_miktari: @devamsizlik.devamsizlik_miktari, mesaj_tel: @devamsizlik.mesaj_tel, ogrsinif: @devamsizlik.ogrsinif, soyad: @devamsizlik.soyad, tc_no: @devamsizlik.tc_no } }
    end

    assert_redirected_to devamsizlik_url(Devamsizlik.last)
  end

  test "should show devamsizlik" do
    get devamsizlik_url(@devamsizlik)
    assert_response :success
  end

  test "should get edit" do
    get edit_devamsizlik_url(@devamsizlik)
    assert_response :success
  end

  test "should update devamsizlik" do
    patch devamsizlik_url(@devamsizlik), params: { devamsizlik: { ad: @devamsizlik.ad, devamsizlik_miktari: @devamsizlik.devamsizlik_miktari, mesaj_tel: @devamsizlik.mesaj_tel, ogrsinif: @devamsizlik.ogrsinif, soyad: @devamsizlik.soyad, tc_no: @devamsizlik.tc_no } }
    assert_redirected_to devamsizlik_url(@devamsizlik)
  end

  test "should destroy devamsizlik" do
    assert_difference('Devamsizlik.count', -1) do
      delete devamsizlik_url(@devamsizlik)
    end

    assert_redirected_to devamsizliks_url
  end
end
