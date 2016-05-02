require 'computer'

describe Computer do
  let(:array) { [1,2,3] }
  let(:rules) { double :rules, moves: array }
  subject(:computer) { described_class.new rules }

  describe '#move' do
    it 'asks the rules for it\'s moves' do
      expect(rules).to receive(:moves)
      computer.move
    end
    it 'returns a random move from the ruleset' do
      expect(rules.moves).to include computer.move
    end
  end
end