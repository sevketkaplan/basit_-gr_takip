require 'test_helper'

class OgrencisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ogrenci = ogrencis(:one)
  end

  test "should get index" do
    get ogrencis_url
    assert_response :success
  end

  test "should get new" do
    get new_ogrenci_url
    assert_response :success
  end

  test "should create ogrenci" do
    assert_difference('Ogrenci.count') do
      post ogrencis_url, params: { ogrenci: { adi: @ogrenci.adi, adres: @ogrenci.adres, bolum: @ogrenci.bolum, date: @ogrenci.date, kan_grubu: @ogrenci.kan_grubu, okul: @ogrenci.okul, sinif: @ogrenci.sinif, soyadi: @ogrenci.soyadi, tc_no: @ogrenci.tc_no, tel_no: @ogrenci.tel_no, veli_ad: @ogrenci.veli_ad, veli_soyad: @ogrenci.veli_soyad, veli_tel: @ogrenci.veli_tel, veli_tel2: @ogrenci.veli_tel2 } }
    end

    assert_redirected_to ogrenci_url(Ogrenci.last)
  end

  test "should show ogrenci" do
    get ogrenci_url(@ogrenci)
    assert_response :success
  end

  test "should get edit" do
    get edit_ogrenci_url(@ogrenci)
    assert_response :success
  end

  test "should update ogrenci" do
    patch ogrenci_url(@ogrenci), params: { ogrenci: { adi: @ogrenci.adi, adres: @ogrenci.adres, bolum: @ogrenci.bolum, date: @ogrenci.date, kan_grubu: @ogrenci.kan_grubu, okul: @ogrenci.okul, sinif: @ogrenci.sinif, soyadi: @ogrenci.soyadi, tc_no: @ogrenci.tc_no, tel_no: @ogrenci.tel_no, veli_ad: @ogrenci.veli_ad, veli_soyad: @ogrenci.veli_soyad, veli_tel: @ogrenci.veli_tel, veli_tel2: @ogrenci.veli_tel2 } }
    assert_redirected_to ogrenci_url(@ogrenci)
  end

  test "should destroy ogrenci" do
    assert_difference('Ogrenci.count', -1) do
      delete ogrenci_url(@ogrenci)
    end

    assert_redirected_to ogrencis_url
  end
end
