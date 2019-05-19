require 'computer'

describe Computer do
  describe '#pick' do
    it 'should pick rock, paper or scissors' do
      expect(['rock', 'paper', 'scissors'].include?(subject.pick)).to eq(true)
    end

    it 'should store the result in a variable' do
      subject.pick
      expect(['rock', 'paper', 'scissors'].include?(subject.result)).to eq(true)
    end
  end

  describe '#validate' do
    before(:each) do
      allow(subject).to receive(:result) { 'rock' }
    end

    it "should return 'player' if the player wins" do
      expect(subject.validate('paper')).to eq('player')
    end

    it "should return 'computer' if the computer wins" do
      expect(subject.validate('scissors')).to eq('computer')
    end

    it "should return 'draw' if no-one wins" do
      expect(subject.validate('rock')).to eq('draw')
    end
  end
end
