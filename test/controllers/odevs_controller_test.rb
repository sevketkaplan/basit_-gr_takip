require 'test_helper'

class OdevsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @odev = odevs(:one)
  end

  test "should get index" do
    get odevs_url
    assert_response :success
  end

  test "should get new" do
    get new_odev_url
    assert_response :success
  end

  test "should create odev" do
    assert_difference('Odev.count') do
      post odevs_url, params: { odev: { aciklama: @odev.aciklama, ad: @odev.ad, date: @odev.date, ders_adi: @odev.ders_adi, durum: @odev.durum, ogretmen_id: @odev.ogretmen_id, ogrid: @odev.ogrid, sinif: @odev.sinif, soyad: @odev.soyad, teslim_date: @odev.teslim_date } }
    end

    assert_redirected_to odev_url(Odev.last)
  end

  test "should show odev" do
    get odev_url(@odev)
    assert_response :success
  end

  test "should get edit" do
    get edit_odev_url(@odev)
    assert_response :success
  end

  test "should update odev" do
    patch odev_url(@odev), params: { odev: { aciklama: @odev.aciklama, ad: @odev.ad, date: @odev.date, ders_adi: @odev.ders_adi, durum: @odev.durum, ogretmen_id: @odev.ogretmen_id, ogrid: @odev.ogrid, sinif: @odev.sinif, soyad: @odev.soyad, teslim_date: @odev.teslim_date } }
    assert_redirected_to odev_url(@odev)
  end

  test "should destroy odev" do
    assert_difference('Odev.count', -1) do
      delete odev_url(@odev)
    end

    assert_redirected_to odevs_url
  end
end
