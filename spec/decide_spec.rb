require 'decide'

describe Decide do
  let(:decide) { described_class.new('Paper', 'Rock') }

  describe 'initialize' do
    it 'receives player and opponent hands' do
      expect(decide.player_hand.to_s).to eq 'Paper'
      expect(decide.opponent_hand.to_s).to eq 'Rock'
    end
  end

  describe 'result' do
    it 'returns the result' do
      expect(decide.result).to eq :win
    end
  end
end
