require 'spec_helper'

feature 'ending the game' do

  scenario 'the user knows if she has tied' do
    visit '/start'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    click_button('Choose')
    allow($game.player_2).to receive(:choice).and_return('rock')
    expect(page).to have_content "You've tied"
  end

end
