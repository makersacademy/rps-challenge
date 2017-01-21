require 'spec_helper'

# User Story 2:

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play rock/paper/scissors' do
  scenario 'allows to choose option' do
    register_and_play('rock')
    expect(page).to have_content 'You have chosen rock'
  end
  context 'return correct results of a game' do
    scenario 'can win' do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      register_and_play('paper')
      expect(page).to have_content 'Congratulations, you won!'
    end
    scenario 'can lose' do
      allow_any_instance_of(Array).to receive(:sample).and_return('paper')
      register_and_play('rock')
      expect(page).to have_content 'Unfortunately you lost. Try again, and maybe you will be lucky next time!'
    end
    scenario 'replay in case of a tie situation' do
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      register_and_play('rock')
      expect(page).to have_content 'The game is tied. We need to replay to break the tie.'
    end
  end

end
