require 'spec_helper'

feature 'ending the game' do

  scenario 'the user knows if she has tied' do
    nicola_selects_rock
    allow($game.player_2).to receive(:choice).and_return('rock')
    click_button('Choose')
    expect(page).to have_content "You've tied"
  end

  scenario 'the user knows if she has won' do
    nicola_selects_rock
    allow($game.player_2).to receive(:choice).and_return('scissors')
    click_button('Choose')
    expect(page).to have_content "You won! :)"
  end

  scenario 'the user knows if she has lost' do
    nicola_selects_rock
    allow($game.player_2).to receive(:choice).and_return('paper')
    click_button('Choose')
    expect(page).to have_content "You lost :("
  end

  def nicola_selects_rock
    visit '/'
    choose('single')
    click_button('Start Game')
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
  end

end
