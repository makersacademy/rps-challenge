require 'spec_helper'

feature 'displays results' do

  let(:computer) { double :computer }

  scenario 'draw between computer and player' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button 'rock'
    expect(page).to have_content("It's a DRAW!")
  end

  scenario 'player wins' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
    click_button 'rock'
    expect(page).to have_content("You WON!")
  end

  scenario 'computer wins' do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button 'rock'
    expect(page).to have_content("You LOST!")
  end

end
