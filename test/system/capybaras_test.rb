require "application_system_test_case"

class CapybarasTest < ApplicationSystemTestCase
  setup do
    @capybara = capybaras(:one)
  end

  test "visiting the index" do
    visit capybaras_url
    assert_selector "h1", text: "Capybaras"
  end

  test "creating a Capybara" do
    visit capybaras_url
    click_on "New Capybara"

    click_on "Create Capybara"

    assert_text "Capybara was successfully created"
    click_on "Back"
  end

  test "updating a Capybara" do
    visit capybaras_url
    click_on "Edit", match: :first

    click_on "Update Capybara"

    assert_text "Capybara was successfully updated"
    click_on "Back"
  end

  test "destroying a Capybara" do
    visit capybaras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Capybara was successfully destroyed"
  end
end
