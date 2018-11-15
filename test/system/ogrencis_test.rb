require "application_system_test_case"

class OgrencisTest < ApplicationSystemTestCase
  setup do
    @ogrenci = ogrencis(:one)
  end

  test "visiting the index" do
    visit ogrencis_url
    assert_selector "h1", text: "Ogrencis"
  end

  test "creating a Ogrenci" do
    visit ogrencis_url
    click_on "New Ogrenci"

    fill_in "Adi", with: @ogrenci.adi
    fill_in "Adres", with: @ogrenci.adres
    fill_in "Bolum", with: @ogrenci.bolum
    fill_in "Date", with: @ogrenci.date
    fill_in "Kan Grubu", with: @ogrenci.kan_grubu
    fill_in "Okul", with: @ogrenci.okul
    fill_in "Sinif", with: @ogrenci.sinif
    fill_in "Soyadi", with: @ogrenci.soyadi
    fill_in "Tc No", with: @ogrenci.tc_no
    fill_in "Tel No", with: @ogrenci.tel_no
    fill_in "Veli Ad", with: @ogrenci.veli_ad
    fill_in "Veli Soyad", with: @ogrenci.veli_soyad
    fill_in "Veli Tel", with: @ogrenci.veli_tel
    fill_in "Veli Tel2", with: @ogrenci.veli_tel2
    click_on "Create Ogrenci"

    assert_text "Ogrenci was successfully created"
    click_on "Back"
  end

  test "updating a Ogrenci" do
    visit ogrencis_url
    click_on "Edit", match: :first

    fill_in "Adi", with: @ogrenci.adi
    fill_in "Adres", with: @ogrenci.adres
    fill_in "Bolum", with: @ogrenci.bolum
    fill_in "Date", with: @ogrenci.date
    fill_in "Kan Grubu", with: @ogrenci.kan_grubu
    fill_in "Okul", with: @ogrenci.okul
    fill_in "Sinif", with: @ogrenci.sinif
    fill_in "Soyadi", with: @ogrenci.soyadi
    fill_in "Tc No", with: @ogrenci.tc_no
    fill_in "Tel No", with: @ogrenci.tel_no
    fill_in "Veli Ad", with: @ogrenci.veli_ad
    fill_in "Veli Soyad", with: @ogrenci.veli_soyad
    fill_in "Veli Tel", with: @ogrenci.veli_tel
    fill_in "Veli Tel2", with: @ogrenci.veli_tel2
    click_on "Update Ogrenci"

    assert_text "Ogrenci was successfully updated"
    click_on "Back"
  end

  test "destroying a Ogrenci" do
    visit ogrencis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ogrenci was successfully destroyed"
  end
end
