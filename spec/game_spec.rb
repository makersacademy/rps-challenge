require 'game'

describe Game do

  let(:player_1) { double(name: 'player_1', move_choice: 'rock') }
  let(:player_2) { double(name: 'player_2', move_choice: 'scissors') }
  let(:game) { described_class.new(player_class_1: player_1, player_class_2: player_2) }

  describe '#initialize' do
    it 'initializes class with player_1 instance' do
      expect(game.player_1).to eq player_1
    end

    it 'initializes class with player_2 instance' do
      expect(game.player_2).to eq player_2
    end

    it 'initializes class with store_game equal to nil' do
      expect(game.stored_game).to eq nil
    end

    it 'initializes class with empty moves array' do
      expect(game.moves).to eq []
    end  
  end

  describe '#compare_moves' do
    it 'adds both player moves to moves array' do
      game.compare_moves
      expect(game.moves).to eq ['rock', 'scissors']
    end
  end

  describe '#score_game' do

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['rock', 'rock'])).to eq "draw"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['rock', 'scissors'])).to eq "player_1"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['scissors', 'rock'])).to eq "player_2"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['paper', 'paper'])).to eq "draw"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['paper', 'rock'])).to eq "player_1"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['rock', 'paper'])).to eq "player_2"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['scissors', 'scissors'])).to eq "draw"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['scissors', 'paper'])).to eq "player_1"
    end

    it 'returns corrent outcome bases on player moves' do
      expect(game.score_game(['paper', 'scissors'])).to eq "player_2"
    end
  end

  describe '#result' do
    it 'correctly returns score message when player 1 wins' do
      game.compare_moves
      moves = game.moves
      game.score_game(moves)
      expect(game.result).to eq 'player_1 wins'
    end
  end

  describe '#self.game' do
    it 'receives player two arguments' do
      allow(Game).to receive(:game).with(player_1, player_2)
    end
  end

  describe '#self.game_instance' do

    it 'creates new game instance with correct player_1 name' do
      Game.game(player_1, player_2)
      stored_game = Game.game_instance
      expect(stored_game.player_1.name).to eq 'player_1'
    end

    it 'creates new game instance with correct player_1 move_choice' do
      Game.game(player_1, player_2)
      stored_game = Game.game_instance
      expect(stored_game.player_1.move_choice).to eq 'rock'
    end
  end
end
