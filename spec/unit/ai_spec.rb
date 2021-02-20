describe Ai do
  describe '#name' do
    it 'is AI by default' do
      expect(subject.name).to eq 'AI'
    end
  end

  describe 'choice' do
    it 'picks a choice at random' do
      allow_any_instance_of(Array).to receive(:sample) { :rock }
      expect(subject.choice).to be :rock
    end
  end
end
