require_relative "../../app"
require_relative "../spec_helper.rb"

feature "Player names" do
  scenario "Can enter player names" do
    visit "/"
    expect(page).to have_content "Enter your name"
    fill_in "player_1", with: "Simon"
    click_button "Confirm name"
    expect(page).to have_content "Welcome Simon"
  end
end
