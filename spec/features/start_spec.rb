require 'spec_helper'

feature 'starting a game' do
  before do
    visit '/'
    fill_in :player_name, with: 'Faisal'
    click_button 'Submit'
  end

  scenario 'player can choose an option' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissor'
  end
end
