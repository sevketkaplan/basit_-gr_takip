require "application_system_test_case"

class SinifsTest < ApplicationSystemTestCase
  setup do
    @sinif = sinifs(:one)
  end

  test "visiting the index" do
    visit sinifs_url
    assert_selector "h1", text: "Sinifs"
  end

  test "creating a Sinif" do
    visit sinifs_url
    click_on "New Sinif"

    fill_in "Adi", with: @sinif.adi
    click_on "Create Sinif"

    assert_text "Sinif was successfully created"
    click_on "Back"
  end

  test "updating a Sinif" do
    visit sinifs_url
    click_on "Edit", match: :first

    fill_in "Adi", with: @sinif.adi
    click_on "Update Sinif"

    assert_text "Sinif was successfully updated"
    click_on "Back"
  end

  test "destroying a Sinif" do
    visit sinifs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sinif was successfully destroyed"
  end
end
