require 'spec_helper'

feature 'results' do
  scenario 'shows player choice' do
    sign_in_and_play_win
    expect(page).to have_content 'Daisy chose Rock,'
  end

  scenario 'shows computer choice' do
    sign_in_and_play_win
    expect(page).to have_content 'Robotnik chose Scissors'
  end

  scenario 'shows victory message' do
    sign_in_and_play_win
    expect(page).to have_content 'Daisy wins!'
  end

  scenario 'shows loss message' do
    sign_in_and_play_lose
    expect(page).to have_content 'You lose!'
  end

  scenario 'shows tie message' do
    sign_in_and_play_tie
    expect(page).to have_content 'It\'s a tie!'
  end

  scenario 'shows players' do
    sign_in_and_play_tie
    expect(page).to have_content 'Daisy vs. Robotnik'
  end

  scenario 'shows title' do
    sign_in_and_play_tie
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end
