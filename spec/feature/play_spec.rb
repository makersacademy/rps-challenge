require 'spec_helper'
#
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'playing a game' do
  # as a marketeer
  # so I can play a game
  # I want to see the shapes I can play
  before do
      visit '/'
      fill_in 'name', with: 'Dave'
      click_button 'Submit'
  end

  scenario 'see the shape options' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  # As a marketeer
  # so I can play a game
  # I want to choose a shape to play
  scenario 'choose a shape' do
    click_button 'Rock'
    expect(page).to have_content 'You choose Rock!'
  end
end
