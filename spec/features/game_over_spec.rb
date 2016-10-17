require 'spec_helper'

feature 'Different endings' do
  scenario 'Player wins' do
    sign_in
    allow(Game.instance).to receive(:computer_choice).and_return(:paper)
    click_button 'Scissors'
    expect(page).to have_content ("Winner")
  end

  scenario 'Computer wins' do
    sign_in
    allow(Game.instance).to receive(:computer_choice).and_return(:rock)
    click_button 'Scissors'
    expect(page).to have_content ("Looser")
  end

  scenario 'Player wins' do
    sign_in
    allow(Game.instance).to receive(:computer_choice).and_return(:scissors)
    click_button 'Scissors'
    expect(page).to have_content ("Tie")
  end

end
