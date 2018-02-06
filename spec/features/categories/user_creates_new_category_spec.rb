require 'rails_helper'

describe "User creates a new category" do
  scenario "a user can create a new category" do
    visit new_category_path

    fill_in "category[name]", with: "Opakawagalaga"
    click_button "Create"

    expect(current_path).to eq("/companies/#{Category.last.id}/jobs")
    expect(page).to have_content("Opakawagalaga")
    expect(Category.count).to eq(1)
  end
end
