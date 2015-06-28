require 'spec_helper'

feature 'ending the game' do

  scenario 'the user knows if she has tied' do
    visit '/start'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    allow($game.player_2).to receive(:choice).and_return('rock')
    click_button('Choose')
    expect(page).to have_content "You've tied"
  end

  scenario 'the user knows if she has won' do
    visit '/start'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    allow($game.player_2).to receive(:choice).and_return('scissors')
    click_button('Choose')
    expect(page).to have_content "You won! :)"
  end

  scenario 'the user knows if she has lost' do
    visit '/start'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    allow($game.player_2).to receive(:choice).and_return('paper')
    click_button('Choose')
    expect(page).to have_content "You lost :("
  end


end
