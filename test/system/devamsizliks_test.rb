require "application_system_test_case"

class DevamsizliksTest < ApplicationSystemTestCase
  setup do
    @devamsizlik = devamsizliks(:one)
  end

  test "visiting the index" do
    visit devamsizliks_url
    assert_selector "h1", text: "Devamsizliks"
  end

  test "creating a Devamsizlik" do
    visit devamsizliks_url
    click_on "New Devamsizlik"

    fill_in "Ad", with: @devamsizlik.ad
    fill_in "Devamsizlik Miktari", with: @devamsizlik.devamsizlik_miktari
    fill_in "Mesaj Tel", with: @devamsizlik.mesaj_tel
    fill_in "Ogrsinif", with: @devamsizlik.ogrsinif
    fill_in "Soyad", with: @devamsizlik.soyad
    fill_in "Tc No", with: @devamsizlik.tc_no
    click_on "Create Devamsizlik"

    assert_text "Devamsizlik was successfully created"
    click_on "Back"
  end

  test "updating a Devamsizlik" do
    visit devamsizliks_url
    click_on "Edit", match: :first

    fill_in "Ad", with: @devamsizlik.ad
    fill_in "Devamsizlik Miktari", with: @devamsizlik.devamsizlik_miktari
    fill_in "Mesaj Tel", with: @devamsizlik.mesaj_tel
    fill_in "Ogrsinif", with: @devamsizlik.ogrsinif
    fill_in "Soyad", with: @devamsizlik.soyad
    fill_in "Tc No", with: @devamsizlik.tc_no
    click_on "Update Devamsizlik"

    assert_text "Devamsizlik was successfully updated"
    click_on "Back"
  end

  test "destroying a Devamsizlik" do
    visit devamsizliks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Devamsizlik was successfully destroyed"
  end
end
