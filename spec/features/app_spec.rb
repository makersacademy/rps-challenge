require 'spec_helper'

feature 'Player can register name' do
  scenario 'player can view registered name' do
    visit ('/')
    fill_in :player_name, with: 'Faisal'
    click_button 'Submit'
    expect(page).to have_content 'Hey, Faisal'
  end
end
