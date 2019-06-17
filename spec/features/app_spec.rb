require 'spec_helper'

feature 'Player can register name' do
  scenario 'player can view registered name' do
    visit ('/')
    fill_in :player_name, with: 'Faisal'
    click_button 'Submit'
    expect(page).to have_content 'Hey, Faisal'
  end

  scenario 'player can choose an option' do
    visit ('/start')
    click_button 'ROCK'
    expect(page).to have_content 'You chose ROCK'
  end
end
