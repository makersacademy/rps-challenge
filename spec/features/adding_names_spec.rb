require 'spec_helper'

feature ' adding in player name' do
  scenario ' add in players name to start' do
    visit('/')
    fill_in :player_1_name, with: 'Mark'
    click_button 'Create player!'
    expect(page).to have_content 'Player Mark created'
  end
end
