require './models/game'

describe Game do
  subject(:game) { Game.new }

      describe 'computer has rock and player has paper' do
        it 'determines the result' do
        computer = double("computer", computer_move: 'Rock')
        player = double("player", player_move: 'Paper')
        expect(game.show_winner("Rock", 'Paper')).to eq 'Player wins!'
      end
    end
      describe 'computer has rock and player has scissors' do
        it 'determines the result' do
          computer = double("computer", computer_move: 'Rock')
          player = double("player", player_move: 'Scissors')
          expect(game.show_winner("Rock", 'Scissors')).to eq 'Computer wins!'
        end
      end

      describe 'computer has rock and player has rock' do
        it 'determines the result' do
          computer = double("computer", computer_move: 'Rock')
          player = double("player", player_move: 'Rock')
          expect(game.show_winner("Rock", 'Rock')).to eq 'Its a draw'
        end
      end

  end
