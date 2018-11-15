require "application_system_test_case"

class OdevsTest < ApplicationSystemTestCase
  setup do
    @odev = odevs(:one)
  end

  test "visiting the index" do
    visit odevs_url
    assert_selector "h1", text: "Odevs"
  end

  test "creating a Odev" do
    visit odevs_url
    click_on "New Odev"

    fill_in "Aciklama", with: @odev.aciklama
    fill_in "Ad", with: @odev.ad
    fill_in "Date", with: @odev.date
    fill_in "Ders Adi", with: @odev.ders_adi
    fill_in "Durum", with: @odev.durum
    fill_in "Ogretmen", with: @odev.ogretmen_id
    fill_in "Ogrid", with: @odev.ogrid
    fill_in "Sinif", with: @odev.sinif
    fill_in "Soyad", with: @odev.soyad
    fill_in "Teslim Date", with: @odev.teslim_date
    click_on "Create Odev"

    assert_text "Odev was successfully created"
    click_on "Back"
  end

  test "updating a Odev" do
    visit odevs_url
    click_on "Edit", match: :first

    fill_in "Aciklama", with: @odev.aciklama
    fill_in "Ad", with: @odev.ad
    fill_in "Date", with: @odev.date
    fill_in "Ders Adi", with: @odev.ders_adi
    fill_in "Durum", with: @odev.durum
    fill_in "Ogretmen", with: @odev.ogretmen_id
    fill_in "Ogrid", with: @odev.ogrid
    fill_in "Sinif", with: @odev.sinif
    fill_in "Soyad", with: @odev.soyad
    fill_in "Teslim Date", with: @odev.teslim_date
    click_on "Update Odev"

    assert_text "Odev was successfully updated"
    click_on "Back"
  end

  test "destroying a Odev" do
    visit odevs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Odev was successfully destroyed"
  end
end
