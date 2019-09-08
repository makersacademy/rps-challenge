require 'player'

describe Player do
  subject(:player) { described_class.new('Susan') }

  describe '#name' do
    it 'returns its name' do
      expect(subject.name).to eq('Susan')
    end
  end
end
