require 'spec_helper'

feature 'Show options Rock Paper Scissor' do
  scenario 'show the options at the start of the game' do
    sign_in_and_play
    expect(page).to have_content('Please choose a move: Rock - Paper - Scissors')
  end
end
