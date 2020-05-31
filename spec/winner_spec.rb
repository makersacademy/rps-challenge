require 'winner'

describe Winner do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  let(:winner) { described_class.new }

  describe '#decide' do
    before(:each) { allow(player_1).to receive(:move) { :scissors } }

    it 'returns the winning player' do
      allow(player_2).to receive(:move) { :paper }
      expect(winner.decide(player_1, player_2)).to eq player_1
    end

    it 'returns :draw if it is a draw' do
      allow(player_2).to receive(:move) { :scissors }
      expect(winner.decide(player_1, player_2)).to eq :draw
    end

    it 'raises an error if a player gives an invalid move' do
      allow(player_2).to receive(:move) { "" }
      expect { winner.decide(player_1, player_2) }.to raise_error("Invalid move given in Winner class")
    end
  end
end
