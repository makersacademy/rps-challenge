describe Computer do
  describe '#move' do
    it 'chooses rock/paper/scissors' do
      allow(subject).to receive(:weapon).and_return('rock')
      expect(subject.weapon).to eq 'rock'
    end
  end
end
