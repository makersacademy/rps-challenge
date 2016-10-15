require 'spec_helper'

feature 'Selecting your weapon of choice' do
  scenario 'player chooses rock as a weapon' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content "You have selected ROCK as your weapon of choice!"
  end

  scenario 'player chooses paper as a weapon' do
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content "You have selected PAPER as your weapon of choice!"
  end

  scenario 'player chooses sissors as a weapon' do
    sign_in_and_play
    click_button 'SISSORS'
    expect(page).to have_content "You have selected SISSORS as your weapon of choice!"
  end


end
