require 'game'

describe Game do
  let(:player_name) { random_string }
  let(:opponent_class) { double :opponent_class, new: opponent }
  let(:opponent) { double :opponent }
  let(:rps_rules_class) { double :rules_class, new: rps }
  let(:rps) { double :rules, moves: [:rock, :paper, :scissors]}
  subject(:game) { described_class.new player_name, rps_rules_class, opponent_class }

  describe 'Game#create' do
    subject(:game_class) { described_class }
    it 'creates a new instance of Game' do
      expect(game_class).to receive(:new)
      game_class.create player_name
    end
  end

  describe 'Game#last' do
    subject(:game_class) { described_class }
    it 'returns an instance of Game' do
      game_class.create player_name
      expect(game_class.last).to be_a Game
    end
  end

  describe '#initialize' do
    subject(:game_class) { described_class }
    it 'has an optional argument' do
      expect(game_class.new player_name).to be_a Game
    end
  end

  describe '#player_name' do
    it 'returns the name given at initialize' do
      expect(game.player_name).to eq player_name
    end
  end

  describe '#player_move= and #player_move' do
    let(:random_move) { [:rock, :paper, :scissors].sample }
    it 'sets the move and returns the players move' do
      game.player_move = random_move
      expect(game.player_move).to eq random_move
    end
  end

  describe '#opponent_move' do
    it 'asks the opponent class to move' do
      allow(opponent).to receive(:move)
      expect(opponent).to receive(:move)
      game.opponent_move
    end
  end

  describe '#result' do
    it 'checks the rules for the result' do
      allow(opponent).to receive(:move)
      expect(rps).to receive(:result)
      game.result
    end
  end

  describe '#mode' do
    it 'returns the game_mode given at initialize' do
      expect(game.mode).to eq rps_rules_class
    end
  end
end