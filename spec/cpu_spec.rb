describe CPU do
  describe '#choose' do
    it 'randomly chooses rock, paper or scissors' do
      subject.choose
      expect(subject.choice).to eq(:rock).or eq(:paper).or eq(:scissors)
    end
  end
end