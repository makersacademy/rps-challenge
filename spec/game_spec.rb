require 'game'
require 'web_helpers'

describe Game do

sunject(:game) {described_class.new('player_1')}  

feature 'RPS outcome' do
  scenario 'it picks a winner' do
    allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content 'YOU WIN'
  end

  scenario 'it shows a draw' do
    allow_any_instance_of(Array).to receive(:sample).and_return('paper')
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content 'IT\'S A DRAW'
  end

  scenario 'it shows a loser' do
    allow_any_instance_of(Array).to receive(:sample).and_return('rock')
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content 'YOU LOSE'
  end
end
end
