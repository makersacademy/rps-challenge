require 'game'

describe Game do
  subject(:fake_normal_game) { double(game_type: 'normal') }
  subject(:fake_advanced_game) { double('advanced game', game_type: 'advanced') }

  subject(:fake_1P_game) { double(number_of_players: '1') }
  subject(:fake_2P_game) { double(number_of_players: '2') }

  subject(:game) { described_class.new(fake_1P_game, fake_normal_game) }

  # could argue I am just checking it initalizes rspec fakes?
  describe '.initialize' do
    it 'receives the number of players on initialize' do
      expect(game.number_of_players).to eq(fake_1P_game)
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

  describe '#tie?' do
    it 'returns tie if player actions are the same' do
      game.player1 = double(action: :rock)
      game.player2 = double(action: :rock)
      expect(game.tie?).to eq(true)
    end

    it 'returns nil if players actions are not the same' do
      game.player1 = double(action: :rock)
      game.player2 = double(action: :scissors)
      expect(game.tie?).to eq(nil)
    end
  end

  describe '#winner' do
    it 'returns player 1 if they win' do
      game.player1 = double(action: :scissors)
      game.player2 = double(action: :paper)

      expect(game.winner?).to eq(game.player1)
    end

    it 'returns player 2 if player 1 does not win' do
      game.player1 = double(action: :rock)
      game.player2 = double(action: :scissors)

      expect(game.winner?).to eq(game.player2)
    end
  end

  describe '#return_result' do
    it 'returns true if game is a tie' do
      game.player1 = double(action: :rock)
      game.player2 = double(action: :rock)
      expect(game.return_result).to eq(true)
    end

    it 'returns a winning player depending on actions' do
      game.player1 = double(action: :scissors)
      game.player2 = double(action: :paper)

      expect(game.return_result).to eq(game.player1)
    end
  end

  describe '#two_player?' do
    it 'returns true if current game is a two player game' do
      expect(game.two_player?).to eq(nil)
    end
  end
end
