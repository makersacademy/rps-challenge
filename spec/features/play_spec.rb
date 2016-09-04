require 'spec_helper'

feature 'player can choose option' do

  scenario 'player is greeted' do
    visit('/')
    fill_in('player', with: 'jon')
    click_button('play!')
    expect(page).to have_content("Welcome Jon!")
  end

  scenario 'countdown to choice displayed' do
    visit('/')
    fill_in('player', with: 'jon')
    click_button('play!')
    expect(page).to have_content("Rock - Paper - Scissors, in 3... 2... 1!")
  end
end
