describe Computer do

  describe '#randomiser' do
    it 'returns one of the three options' do
      allow(subject).to receive(:randomiser) { 'Rock' }
      expect(subject.randomiser).to eq 'Rock'
    end
  end
end
