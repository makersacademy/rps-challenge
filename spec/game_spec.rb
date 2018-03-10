require 'game'

describe Game do
  subject(:fake_player1) { double('player', name: 'Fake Player 1') }
  subject(:fake_player2) { double('player', name: 'Fake Player 2') }

  subject(:game) { described_class.new(fake_player1, fake_player2) }

  describe '.initialize' do
    it 'receives player 1 on initialize' do
      expect(game.player1).to eq(fake_player1)
    end

    it 'receives player 2 on initialize' do
      expect(game.player2).to eq(fake_player2)
    end
  end

  describe '#random_action' do
    it 'receives a random valid action' do
      expect(Game::DEFAULT_ACTIONS).to include(game.random_action)
    end
  end

  describe '#return_result' do
    context 'returns winning player depending on result' do
      it 'return player 1 if rock against scissors' do
        fake_player1 = double(:action => 'rock')
        fake_player2 = double(:action => 'scissors')

        expect(game.return_result(fake_player1, fake_player2)).to eq(fake_player1)
      end
      it 'return player 1 if paper against rock' do
        fake_player1 = double(:action => 'paper')
        fake_player2 = double(:action => 'rock')

        expect(game.return_result(fake_player1, fake_player2)).to eq(fake_player1)
      end
      it 'return player 1 if scissors against paper' do
        fake_player1 = double(:action => 'scissors')
        fake_player2 = double(:action => 'paper')

        expect(game.return_result(fake_player1, fake_player2)).to eq(fake_player1)
      end

      it 'return tie if paper == paper' do
        fake_player1 = double(:action => 'paper')
        fake_player2 = double(:action => 'paper')

        expect(game.return_result(fake_player1, fake_player2)).to eq('tie')
      end
    end
  end
end
