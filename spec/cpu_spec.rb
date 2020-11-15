describe CPU do
  describe '#choose' do
    it 'randomly chooses rock, paper or scissors' do
      subject.choose
      expect(subject.choice).to eq(:rock).or eq(:paper).or eq(:scissors)
    end
  end

  describe '#add_point' do
    it "adds a point to the CPU's score" do 
      expect { subject.receive_point }.to change { subject.score }.by(1)
    end
  end
end