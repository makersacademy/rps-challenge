require 'game'

describe Game do
  subject(:match) { described_class.new }
  let(:game) { match.result(player, computer.move) }
  let(:player) { :rock }
  let(:computer) { double :computer }
  
  context 'won' do
    it 'returns win' do
      allow(computer).to receive(:move) { :scissors }
      expect(game).to eq :win
    end
  end
  
  context 'lost' do
    it 'returns loss' do
      allow(computer).to receive(:move) { :paper }
      expect(game).to eq :lose
    end
  end
    
  context 'draw' do
    it 'returns draw' do
      allow(computer).to receive(:move) { :rock }
      expect(game).to eq :draw
    end
  end
end
