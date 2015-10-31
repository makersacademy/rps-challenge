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

  scenario 'Computer plays a hand' do
    sign_in
    click_button('ROCK')
    expect(page).to have_content 'Computer chose:'
  end

end

