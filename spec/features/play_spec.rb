require 'spec_helper'
require_relative 'web_helpers'

feature 'playing rock, paper, scissors' do
  scenario 'it displays rock, paper, scissors options' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'it prompts for a choice' do
    sign_in_and_play
    expect(page).to have_content('Choose an option')
  end
end

feature 'playing rock, paper, scissors, with 2 players' do
  scenario 'displays player 1 options' do
    multi_play_sign_in
    expect(page).to have_content('Marlon choose an option')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'displays player 1 has chosen' do
    multi_play_sign_in
    click_button('Rock')
    expect(page).to have_content('Marlon has chosen')
  end

  scenario 'displays player 2 options after player 1' do
    multi_play_sign_in
    click_button('Rock')
    expect(page).to have_content('Fred choose an option')
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end
end
