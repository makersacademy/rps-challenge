require 'spec_helper'

feature 'Has a selection of paper, scissors and rock choices' do
  scenario 'The player can choose from three game moves' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
    expect(page).to have_button 'Rock'
  end
end

feature 'Can select an option - paper, scissors, rock' do
  scenario '' do
    sign_in_and_play
    click_button('Paper')
  end
end
