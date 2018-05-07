describe Computer do
  describe '#make_move' do
    it 'makes a move' do
      subject.make_move
      expect(['rock', 'paper', 'scissors']).to include subject.move
    end
  end

  describe '#name' do
    it 'is called computer' do
      expect(subject.name).to eq 'Computer'
    end
  end
end
