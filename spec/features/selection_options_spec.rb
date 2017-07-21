require 'spec_helper'

feature 'A player has a selection of paper, scissors and rock choices' do
  scenario 'The player can choose from three game moves' do
    sign_in_and_play
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
    expect(page).to have_content 'Rock'
  end
end
