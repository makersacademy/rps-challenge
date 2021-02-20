describe Player do
  subject { described_class.new('Frank') }

  describe '#name' do
    it 'returns the player name' do
      expect(subject.name).to eq 'Frank'
    end
  end

  describe '#choice' do
    it 'is nil by default' do
      expect(subject.choice).to be_nil
    end

    it 'can be set to player choice' do
      subject.choice = :scissors
      expect(subject.choice).to be :scissors
    end
  end
end
