require 'game'

describe Game do
  subject(:fake_normal_game) { double(game_type: 'normal') }
  # subject(:fake_advanced_game) { double('advanced game', game_type: 'advanced') }

  subject(:fake_single_player_game) { double(number_of_players: '1') }
  subject(:fake_two_player_game) { double(number_of_players: '2') }

  subject(:game) { described_class.new(fake_single_player_game, fake_normal_game) }

  # could argue I am just checking it initalizes rspec fakes?
  describe '.initialize' do
    it 'receives the number of players on initialize' do
      expect(game.number_of_players).to eq(fake_single_player_game)
    end

    it 'receives gametype on initialize' do
      expect(game.game_type).to eq(fake_normal_game)
    end

    it 'result to be nil on initialize' do
      expect(game.result).to be_nil
    end
  end

  describe 'game can receive and set players' do
    it 'receive player 1' do
      fake_player1 = double('player', name: 'Fake Player 1')
      game.player1 = fake_player1

      expect(game.player1).to eq(fake_player1)
    end

    it 'receive player 2' do
      fake_player2 = double('player', name: 'Fake Player 2')
      game.player2 = fake_player2

      expect(game.player2).to eq(fake_player2)
    end
  end

  describe '#return_result' do
    context 'returns winning player depending on result' do
      it 'return player 1 if rock against scissors' do
        fake_player1 = double(name: 'Fake Player 1', :action => 'rock')
        fake_player2 = double(name: 'Fake Player 2', :action => 'scissors')

        expect(game.return_result(fake_player1, fake_player2)).to eq(fake_player1.name)
      end
      it 'return player 1 if paper against rock' do
        fake_player1 = double(name: 'Fake Player 1', :action => 'paper')
        fake_player2 = double(name: 'Fake Player 2', :action => 'rock')

        expect(game.return_result(fake_player1, fake_player2)).to eq(fake_player1.name)
      end
      it 'return player 1 if scissors against paper' do
        fake_player1 = double(name: 'Fake Player 1', :action => 'scissors')
        fake_player2 = double(name: 'Fake Player 2', :action => 'paper')

        expect(game.return_result(fake_player1, fake_player2)).to eq(fake_player1.name)
      end

      it 'return tie if paper == paper' do
        fake_player1 = double(name: 'Fake Player 1', :action => 'paper')
        fake_player2 = double(name: 'Fake Player 2', :action => 'paper')

        expect(game.return_result(fake_player1, fake_player2)).to eq('tie')
      end
    end
  end
end
