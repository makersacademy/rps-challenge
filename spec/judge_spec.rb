require 'spec_helper'
require 'judge'

describe Judge do
  describe '#outcome' do
    it 'returns message when players tie' do
      judge = described_class.new("Rock","Rock")
      expect(judge.outcome).to eq "It's a tie!"
    end
  end
end
