require 'spec_helper'

feature 'Restart the game' do
  scenario 'restart at the end of the game' do
    sign_in_and_play
    click_button('Rock')
    click_button('Play again')
    expect(page).to have_content('Darth Vader playing Rock Paper Scissors')
  end
end
