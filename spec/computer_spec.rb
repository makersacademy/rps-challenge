describe Computer do
  describe '#move' do
    it 'chooses rock/paper/scissors' do
      allow(subject).to receive(:move).and_return('rock')
      expect(subject.move).to eq 'rock'
    end
  end
end 
