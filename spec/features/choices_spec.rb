require 'spec_helper'

feature 'Possible moves' do
  scenario 'Rock, paper, and scissors are available as options' do
    sign_in_and_start_game
    find_button('Rock').click
    find_button('Paper').click
    find_button('Scissors').click
  end
end
