require 'spec_helper'

feature 'results (player vs computer)' do

  before do
    sign_in_and_play
  end

  scenario 'Player wins if rock is chosen and computer chooses scissors' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button('Rock')
    expect(page).to have_content "You Won!"
  end

  scenario 'Player loses if rock is chosen and computer chooses paper' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button('Rock')
    expect(page).to have_content "You Lose!"
  end

  scenario 'result is draw if both players choose rock' do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button('Rock')
    expect(page).to have_content "It's a draw!"
  end

end
