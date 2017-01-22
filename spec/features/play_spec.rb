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
  #
  # scenario 'b) player one chooses rock and the computer plays scissors' do
  #   sign_in_and_play
  #   fill_in :p1_choice_input, with: 'Rock'
  #   click_button 'Submit'
  #   msg = "You chose Rock and The Computer chose Scissors, YOU WIN!"
  #   expect(page).to have_content msg
  # end

  scenario 'b) player one chooses rock and the computer plays scissors' do
    sign_in_and_play
    click_button 'Rock'
    msg = "You chose Rock and The Computer chose Scissors, YOU WIN!"
    expect(page).to have_content msg
  end


end
