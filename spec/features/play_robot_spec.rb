require 'spec_helper'

feature 'a player can play against a robot' do

  scenario 'a player is in default mode' do
    enter_player_name
    expect(page).to(have_content("You are playing against the Rock, Paper, Scissors robot"))
  end

  scenario 'the robot randomly selects a weapon' do
    allow(Kernel).to(receive(:rand).and_return(1))
    enter_player_name
    click_button("Rock")
    expect(page).to(have_content("Robot has chosen Paper"))
  end
end
