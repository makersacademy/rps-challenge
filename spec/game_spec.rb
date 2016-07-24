require 'game'

describe Game do

  let(:player) {double(:player)}
  subject {described_class.new(player)}

  describe '#player' do
    it 'returns the player' do
      expect(subject.player).to eq player
    end
  end

  describe '#npc_score' do

    it 'starts at zero' do
      expect(subject.npc_score).to be_zero
    end

    it 'increments if player loses' do
      allow(subject).to receive(:result).and_return "YOU LOSE!"
      subject.calculate_score
      expect(subject.npc_score).to eq 1
    end

  end


end
