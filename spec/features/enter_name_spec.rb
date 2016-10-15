require 'spec_helper'

feature 'enter name' do
  scenario 'submit player name' do
    visit('/')
    fill_in :player_name, with: 'Master Romshambollah'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Master Romshambollah, This is RoboPlayer, you ready to dance?'
  end


end
