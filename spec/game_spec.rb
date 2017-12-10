require 'game'
require 'player'

describe Game do
  let(:player_1) { double(:player, name: "James", make_choice: "Rock", choice: nil) }
  let(:player_2) { double(:player, name: "Mary") }
  describe 'initialize' do
    it 'should initialize a game with two players when two names are provided' do
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.player_1.nil?).to be false
    end

    it 'should create a new player instance with name AI when no player 2 provided' do
      game = Game.new({player_1: player_1})
      expect(game.player_2).to be_a(Player)
    end

    it 'should initialize multiplayer to false if only 1 player provided' do
      game = Game.new({player_1: player_1})
      expect(game.multiplayer).to be false
    end
    it 'should initialize multiplayer to true if both players proivded' do
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.multiplayer).to be true
    end
  end

  describe '#switch_turns' do
    it 'should be player2s turn after player1s' do
      game = Game.new({player_1: player_1, player_2: player_2})
      #allow(:player_1).to receive(:make_choice)
      game.make_move("Rock")
      expect(game.curr_turn).to eq player_2
    end
  end

  describe '#reset_choices' do
    it 'should reset player choices' do
      expect(player_1).to respond_to(:choice)
    end
  end

  describe '#get_winner' do
    it 'should return draw when both choices are the same' do
      allow(player_1).to receive(:choice).and_return "Rock"
      allow(player_2).to receive(:choice).and_return "Rock"
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.get_winner).to eq "Draw!"
    end
    it 'should return James wins! when p1 wins' do
      allow(player_1).to receive(:choice).and_return "Rock"
      allow(player_2).to receive(:choice).and_return "Scissors"
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.get_winner).to eq "James wins!"
    end
    it 'should return Mary wins! when p2 wins' do
      allow(player_1).to receive(:choice).and_return "Scissors"
      allow(player_2).to receive(:choice).and_return "Rock"
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.get_winner).to eq "Mary wins!"
    end
    it 'should return James wins! when p1 wins with paper' do
      allow(player_1).to receive(:choice).and_return "Paper"
      allow(player_2).to receive(:choice).and_return "Rock"
      game = Game.new({player_1: player_1, player_2: player_2})
      expect(game.get_winner).to eq "James wins!"
    end
  end
end
