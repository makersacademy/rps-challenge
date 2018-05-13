require 'spec_helper'
feature 'Registering player name' do
  scenario 'the player can enter their name' do
    visit '/'
    fill_in 'player_name', with: 'Paola'
    click_button 'Submit'
    expect(page).to have_content 'Paola'
  end
end
