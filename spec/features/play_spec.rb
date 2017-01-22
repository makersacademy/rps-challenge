require 'spec_helper'
# in spec/features/play_spec.rb

# User story 2:
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature '2.Play' do
  scenario 'a) player one sees they have to choose Rock, Paper or Scissors' do
    sign_in_and_play
    expect(page).to have_content 'Enter Rock, Paper or Scissors'
  end

  scenario 'b) player one chooses Paper and the computer plays Scissors' do
    sign_in_and_play
    click_button 'Rock'
    msg = "You chose Rock and The Computer chose Scissors, YOU WIN!"
    expect(page).to have_content msg
  end

  scenario 'c) player one chooses Paper and the computer plays Scissors' do
    sign_in_and_play
    click_button 'Paper'
    msg = "You chose Paper and The Computer chose Scissors, YOU LOSE!"
    expect(page).to have_content msg
  end

  scenario 'd) player one chooses Scissors and the computer plays Scissors' do
    sign_in_and_play
    click_button 'Scissors'
    msg = "You chose Scissors and The Computer chose Scissors, IT'S A DRAW!"
    expect(page).to have_content msg
  end

  scenario "e. Go back to the Register page" do
    sign_in_and_play
    click_button 'Scissors'
    click_button 'Back'
    expect(page).to have_content 'Player 1: Enter your name:'
  end


end
