require "application_system_test_case"

class IncomeSourcesTest < ApplicationSystemTestCase
  setup do
    @income_source = income_sources(:one)
  end

  test "visiting the index" do
    visit income_sources_url
    assert_selector "h1", text: "Income sources"
  end

  test "should create income source" do
    visit income_sources_url
    click_on "New income source"

    fill_in "Description", with: @income_source.description
    fill_in "Name", with: @income_source.name
    click_on "Create Income source"

    assert_text "Income source was successfully created"
    click_on "Back"
  end

  test "should update Income source" do
    visit income_source_url(@income_source)
    click_on "Edit this income source", match: :first

    fill_in "Description", with: @income_source.description
    fill_in "Name", with: @income_source.name
    click_on "Update Income source"

    assert_text "Income source was successfully updated"
    click_on "Back"
  end

  test "should destroy Income source" do
    visit income_source_url(@income_source)
    click_on "Destroy this income source", match: :first

    assert_text "Income source was successfully destroyed"
  end
end
