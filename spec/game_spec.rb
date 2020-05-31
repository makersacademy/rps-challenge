require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  let(:move) { :rock }
  let(:game) { described_class.new(player_1, player_2) }

  describe '#initialize' do
    it 'is expected to respond to #new with 2 arguments' do
      expect(described_class).to respond_to(:new).with(2).arguments
    end
  end

  describe '#player_1' do
    it 'returns the Player instance of player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns the Player instance of player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#assign_move' do
    it 'assigns a move to a player' do
      expect(player_1).to receive(:move=).with(move)
      game.assign_move(player_1, move)
    end
  end

  describe '#result' do
    before(:each) { allow(player_1).to receive(:move) { :scissors } }

    it 'is expected to respond to #result with 1 argument' do
      expect(game).to respond_to(:result).with(1).argument
    end

    it 'returns :win when the player taken as an argument wins' do
      allow(player_2).to receive(:move) { :paper }
      expect(game.result(player_1)).to eq :win
    end

    it 'returns :lose when the player taken as an argument loses' do
      allow(player_2).to receive(:move) { :rock }
      expect(game.result(player_1)).to eq :lose
    end

    it 'returns :draw when the player taken as an argument draws' do
      allow(player_2).to receive(:move) { :scissors }
      expect(game.result(player_1)).to eq :draw
    end
  end
end
