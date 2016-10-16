require 'spec_helper'

feature "Test the content on" do
  scenario "the rock page" do
    visit('/')
    fill_in :player_name, with: "Rudolph"
    click_button 'Show me the money'
    expect(page).to have_content "Welcome Rudolph"
    click_button 'Rock'
    expect(page).to have_content "You chose Rock!"
  end
end
