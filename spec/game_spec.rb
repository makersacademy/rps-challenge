require 'game.rb'

describe Game do

  # let(:first_turn) {double :}

  subject(:game) {described_class.new}

  describe '#play' do

      it 'player1 wins when player1 picks paper, player2 picks rock' do
        expect(game.play('paper', 'rock')).to eq 'You win!'
      end

      it 'player1 loses when player 1 picks scissors player2 picks rock ' do
        expect(game.play('scissors', 'rock')).to eq 'I win! Mwahahaha'
      end


      it 'player1 wins when player1 picks scissors and player2 picks paper' do
        expect(game.play('scissors', 'paper')).to eq 'You win!'
      end

      it 'player1 loses when player 1 picks rock and player2 picks paper' do
        expect(game.play('rock', 'paper')).to eq 'I win! Mwahahaha'
      end

      it 'player1 loses when player1 picks paper and player2 picks scissors' do
        expect(game.play('paper','scissors')).to eq 'I win! Mwahahaha'
      end

      it 'player1 wins when player 1 picks rock and player2 picks scissors' do
        expect(game.play('rock', 'scissors')).to eq 'You win!'
      end

  end

end
