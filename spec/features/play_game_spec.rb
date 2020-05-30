require 'spec_helper'

feature 'playing the game' do

  scenario 'display the options: rock, paper and scissors' do
    sign_in
    expect(page).to have_button 'rock'
    expect(page).to have_button 'paper'
    expect(page).to have_button 'scissors'
  end

  scenario 'allow the marketeer to chose an option' do
    sign_in
    click_button 'rock'
    expect(page).to have_content "you chose rock"
  end

  scenario 'the computer will chose a random option' do
    sign_in
    srand(1234)
    click_button 'rock'
    expect(page).to have_content "computer chose scissors"
  end
end
