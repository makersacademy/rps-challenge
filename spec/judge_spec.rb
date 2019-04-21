require 'spec_helper'
require 'judge'

describe Judge do
  describe '#outcome' do
    it 'returns message when players tie' do
      judge = described_class.new("Rock", "Rock")
      expect(judge.outcome).to eq "It's a tie!"
    end

    it 'returns winning message for player 1' do
      judge = described_class.new("Paper", "Rock")
      expect(judge.outcome).to eq "Player 1"
    end

    it 'returns winning message for player 2' do
      judge = described_class.new("Paper", "Scissors")
      expect(judge.outcome).to eq "Player 2"
    end
  end
end
