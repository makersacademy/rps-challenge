require 'spec_helper'

feature 'Feature Test Multi - start multi player game' do
  scenario 'submitting both names' do
    submit_names
    expect(page).to have_content "Rosie and Monster - let the battle commence!"
  end
end
feature 'Feature Test Multi - Player 1 win with rock' do
  scenario 'player 1 choose rock & win' do
    submit_names
    players_choose
    expect(page).to have_content "Rosie: rock vs. Monster: scissors"
    expect(page).to have_content "Rosie won!"
  end
end
