describe Computer do
  describe '#name' do
    it 'is Computer by default' do
      expect(subject.name).to eq 'Computer'
    end
  end

  describe 'choose' do
    it 'picks a choice at random' do
      allow_any_instance_of(Array).to receive(:sample) { :rock }
      expect(subject.choose).to be :rock
    end
  end

  describe 'move' do
    it 'returns the choice' do
      move = subject.choose
      expect(subject.move).to be move
    end
  end
end
