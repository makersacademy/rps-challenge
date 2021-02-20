describe Player do
  subject { described_class.new('Frank') }

  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to eq 'Frank'
    end
  end
end
