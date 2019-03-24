# require 'spec_helper'

feature 'when user signs up for the game' do
  scenario 'expects player to fill in name in a form and displays name after submitted' do
    visit '/'
    fill_in(:player_1_name, with: 'Alex')
    click_button 'Register'
    expect(page).to have_content ('Alex, You are registered to play')
  end
end 

