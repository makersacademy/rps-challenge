require 'spec_helper'

feature 'Playing' do
  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
  end

  scenario 'Player wins' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Player wins this time!'
  end

  scenario 'Computer wins' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'RPSLS-oid wins this time!'
  end

  scenario 'Draw' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'This game is a Draw!'
  end
end
