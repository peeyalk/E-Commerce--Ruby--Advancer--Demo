require "application_system_test_case"

class InsturmentsTest < ApplicationSystemTestCase
  setup do
    @insturment = insturments(:one)
  end

  test "visiting the index" do
    visit insturments_url
    assert_selector "h1", text: "Insturments"
  end

  test "creating a Insturment" do
    visit insturments_url
    click_on "New Insturment"

    fill_in "Brand", with: @insturment.brand
    fill_in "Condition", with: @insturment.condition
    fill_in "Description", with: @insturment.description
    fill_in "Finish", with: @insturment.finish
    fill_in "Model", with: @insturment.model
    fill_in "Price", with: @insturment.price
    fill_in "Title", with: @insturment.title
    click_on "Create Insturment"

    assert_text "Insturment was successfully created"
    click_on "Back"
  end

  test "updating a Insturment" do
    visit insturments_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @insturment.brand
    fill_in "Condition", with: @insturment.condition
    fill_in "Description", with: @insturment.description
    fill_in "Finish", with: @insturment.finish
    fill_in "Model", with: @insturment.model
    fill_in "Price", with: @insturment.price
    fill_in "Title", with: @insturment.title
    click_on "Update Insturment"

    assert_text "Insturment was successfully updated"
    click_on "Back"
  end

  test "destroying a Insturment" do
    visit insturments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insturment was successfully destroyed"
  end
end
