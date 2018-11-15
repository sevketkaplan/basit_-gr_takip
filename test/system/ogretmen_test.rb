require "application_system_test_case"

class OgretmenTest < ApplicationSystemTestCase
  setup do
    @ogretman = ogretmen(:one)
  end

  test "visiting the index" do
    visit ogretmen_url
    assert_selector "h1", text: "Ogretmen"
  end

  test "creating a Ogretman" do
    visit ogretmen_url
    click_on "New Ogretman"

    fill_in "Adi", with: @ogretman.adi
    fill_in "Aldigi Ucret", with: @ogretman.aldigi_ucret
    fill_in "Kan Grubu", with: @ogretman.kan_grubu
    fill_in "Soyadi", with: @ogretman.soyadi
    fill_in "Tc No", with: @ogretman.tc_no
    fill_in "Tel", with: @ogretman.tel
    fill_in "Tel2", with: @ogretman.tel2
    click_on "Create Ogretman"

    assert_text "Ogretman was successfully created"
    click_on "Back"
  end

  test "updating a Ogretman" do
    visit ogretmen_url
    click_on "Edit", match: :first

    fill_in "Adi", with: @ogretman.adi
    fill_in "Aldigi Ucret", with: @ogretman.aldigi_ucret
    fill_in "Kan Grubu", with: @ogretman.kan_grubu
    fill_in "Soyadi", with: @ogretman.soyadi
    fill_in "Tc No", with: @ogretman.tc_no
    fill_in "Tel", with: @ogretman.tel
    fill_in "Tel2", with: @ogretman.tel2
    click_on "Update Ogretman"

    assert_text "Ogretman was successfully updated"
    click_on "Back"
  end

  test "destroying a Ogretman" do
    visit ogretmen_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ogretman was successfully destroyed"
  end
end
