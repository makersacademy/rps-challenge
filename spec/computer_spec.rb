describe Computer do
  it 'should be a computer' do
    expect(subject.computer?).to be true
  end

  describe '#random_throw' do
    it 'should return rock, paper, or scissors' do
      expect(subject.random_throw).to eq(:rock).or equal(:paper).or equal(:scissors)
    end
  end
end