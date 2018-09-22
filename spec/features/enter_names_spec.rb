require 'spec_helper'
require './app'

feature "Entering player names" do
  scenario "Players enter their names at the beginning" do
    visit '/'
    fill_in 'player_1', with: 'Dumbledore'
    click_button 'Let\'s play!'
    expect(page).to have_content "Dumbledore vs. The Machine"
  end
end
