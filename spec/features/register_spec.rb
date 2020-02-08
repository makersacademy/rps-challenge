require "spec_helper"

feature "registering player name" do
  scenario "player can register and see their name" do
    visit "/"
    fill_in "name", with: "Mrtl"
    click_button "Submit"
    expect(page).to have_content "Mrtl"
  end
end
