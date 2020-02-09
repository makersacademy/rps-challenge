require 'spec_helper'

feature "players can enter their names" do
  scenario "User logs onto page and enters two names" do
    visit('/')
    fill_in "Player 1", with: "Joe"
    fill_in "Player 2", with: "Haydon"
    click_button("Submit Names")
    expect(page).to have_text("Hellow uwu")
  end
end