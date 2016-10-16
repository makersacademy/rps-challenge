require "spec_helper"

feature 'Displays Main game page' do
  scenario 'Player has choice of Rock' do
    play_rock
    expect(page).to have_content 'Thousand fingers has chosen Rock'
  end

  scenario 'Player has choice of Paper' do
    play_paper
    expect(page).to have_content 'Thousand fingers has chosen Paper'
  end

  scenario 'Player has choice of Scissors' do
    play_scissors
    expect(page).to have_content 'Thousand fingers has chosen Scissors'
  end
end
