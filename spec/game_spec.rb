require 'game'

describe Game do
  subject(:game) {described_class.new(player_1, player_2)}
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

  describe '#player_1' do
    it 'initializes with player_1' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'initializes with player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#results' do
    it 'creates a draw' do
      expect(game.result(:rock, :rock)).to eq :draw
    end
    it 'creates a win for p1' do
      expect(game.result(:rock, :scissors)).to eq :win
    end
    it 'creates a lose for p1' do
      expect(game.result(:rock, :paper)).to eq :lose
    end
  end

end
