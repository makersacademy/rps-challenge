require 'spec_helper'
feature 'Regstering player name' do
  scenario 'entering my name' do
    visit '/'
    fill_in 'player_name', with: 'Paola'
    click_button 'Submit'
    expect(page).to have_content 'Paola'
  end
end
