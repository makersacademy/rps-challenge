require 'npc'

describe Npc do
  describe '#selection' do
    it 'returns the selection' do
      expect(subject.selection).to satisfy do
        |selection| ['Rock', 'Paper', 'Scissors'].include?(selection)
      end
    end
  end
end
