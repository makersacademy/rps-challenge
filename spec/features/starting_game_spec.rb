require 'spec_helper'

feature 'starting a game' do

  scenario 'the welcome page allows a player to start a single player game' do
    visit '/'
    choose('single')
    click_button('Start Game')
    expect(page).to have_content 'Enter your name'
  end

  scenario 'the users enters their name before picking an option' do
    visit '/start'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    expect(page).to have_content 'Nicola'
  end

end
