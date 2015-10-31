require 'spec_helper'

feature 'Playing the game' do
  scenario 'User has ROCK option' do
    sign_in
    expect(page).to have_button 'ROCK'
  end

  scenario 'User has PAPER option' do
    sign_in
    expect(page).to have_button 'PAPER'
  end

  scenario 'User has SCISSORS option' do
    sign_in
    expect(page).to have_button 'SCISSORS'
  end

  scenario 'Users plays ROCK' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content 'Player 1 chose: ROCK'
  end

   scenario 'Users plays PAPER' do
    sign_in
    click_button('PAPER')
    expect(page).to have_content 'Player 1 chose: PAPER'
  end

  scenario 'Users plays SCISSORS' do
    sign_in
    click_button('SCISSORS')
    expect(page).to have_content 'Player 1 chose: SCISSORS'
  end

  scenario 'Computer plays a hand' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content 'Computer chose:'
  end

end

