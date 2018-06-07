require 'results'

describe Results do
  let(:choice1) { double :choice1, turn: 'Paper' }
  let(:choice2) { double :choice2, turn: 'Scissors' }
  subject(:results) { described_class.new('Charlene', 'Bob', choice1, choice2) }
  describe '#declare' do
    it 'decalres the winner' do
      results.winner
      expect(results.declare).to eq 'Bob won'
    end
  end
end
