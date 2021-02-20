describe Player do
  subject { described_class.new('Frank') }

  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to eq 'Frank'
    end
  end

  describe '#move' do
    it 'is nil by default' do
      expect(subject.move).to be_nil
    end

    it 'can be set to player move' do
      subject.move = :scissors
      expect(subject.move).to be :scissors
    end
  end
end
