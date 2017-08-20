require "spec_helper"

feature "home page", type: :feature do
  scenario "Enter your name" do
    visit "/"
    expect(page).to have_text("Enter your name")
  end
end

feature "Enter names" do
  scenario "submitting names" do
    visit "/"
    fill_in :player_1_name, with: "Puyan"
    click_button "Submit"
    expect(page).to have_content "Puyan"
  end
end
