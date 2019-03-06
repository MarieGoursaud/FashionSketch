require "application_system_test_case"

class SketchesTest < ApplicationSystemTestCase
  setup do
    @sketch = sketches(:one)
  end

  test "visiting the index" do
    visit sketches_url
    assert_selector "h1", text: "Sketches"
  end

  test "creating a Sketch" do
    visit sketches_url
    click_on "New Sketch"

    fill_in "Date", with: @sketch.date
    fill_in "Image", with: @sketch.image
    fill_in "Name", with: @sketch.name
    fill_in "Type", with: @sketch.type
    click_on "Create Sketch"

    assert_text "Sketch was successfully created"
    click_on "Back"
  end

  test "updating a Sketch" do
    visit sketches_url
    click_on "Edit", match: :first

    fill_in "Date", with: @sketch.date
    fill_in "Image", with: @sketch.image
    fill_in "Name", with: @sketch.name
    fill_in "Type", with: @sketch.type
    click_on "Update Sketch"

    assert_text "Sketch was successfully updated"
    click_on "Back"
  end

  test "destroying a Sketch" do
    visit sketches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sketch was successfully destroyed"
  end
end
