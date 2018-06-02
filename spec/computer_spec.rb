describe Computer do
  describe '#make_move' do
    it 'stores a move' do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      subject.make_move
      expect(subject.move).to eq :rock
    end
  end

  describe '#name' do
    it 'is called computer' do
      expect(subject.name).to eq 'Computer'
    end
  end
end
