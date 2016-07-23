require_relative '../spec_helper'

feature "Enter name" do
  scenario "Player enters his name" do
    visit '/'
    fill_in :player_1_name, with: 'Sal'
    click_button 'Submit'
    expect(page).to have_content "Welcome to the game, Sal"
  end
end
