require 'spec_helper'

# User Story 2:

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play rock/paper/scissors' do
  context 'one player game' do
    scenario 'allows to choose option' do
      register_one_player_and_play_rps('rock')
      expect(page).to have_content 'You have chosen rock'
    end
    context 'return correct results of a game' do
      scenario 'can win' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        register_one_player_and_play_rps('paper')
        expect(page).to have_content 'Congratulations, you won!'
      end
      scenario 'can lose' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
        register_one_player_and_play_rps('rock')
        expect(page).to have_content 'Unfortunately you lost. Try again, and maybe you will be lucky next time!'
      end
      scenario 'replay in case of a tie situation' do
        allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
        register_one_player_and_play_rps('rock')
        expect(page).to have_content 'The game is tied. We need to replay to break the tie.'
      end
    end
  end
  context 'two players game' do
    scenario 'allows to choose option' do
      register_two_players_and_play_rps('rock', 'scissors')
      expect(page).to have_content 'Katerina has chosen rock'
      expect(page).to have_content 'Ivan has chosen scissors'
    end
    context 'return correct results of a game' do
      scenario 'player one can win' do
        register_two_players_and_play_rps('paper','rock')
        expect(page).to have_content 'Congratulations to Katerina, you won!'
      end
      scenario 'player one can lose' do
        register_two_players_and_play_rps('rock','paper')
        expect(page).to have_content 'Congratulations to Ivan, you won!'
      end
      scenario 'replay in case of a tie situation' do
        register_two_players_and_play_rps('rock','rock')
        expect(page).to have_content 'The game is tied. We need to replay to break the tie.'
      end
    end
  end
end
