require_relative '../../lib/game'

describe Game do

  describe 'rock' do
    it "loses to paper" do
      expect(subject.calculate_outcome(:rock, :paper)).to eq :paper
      expect(subject.calculate_outcome(:paper, :rock)).to eq :paper
    end

    it "beats scissors" do
      expect(subject.calculate_outcome(:rock, :scissors)).to eq :rock
      expect(subject.calculate_outcome(:scissors, :rock)).to eq :rock
    end

    it "draws with rock" do
      expect(subject.calculate_outcome(:rock, :rock)).to eq :draw
    end
  end
    
  describe 'scissors' do
    it "loses to rock" do
      expect(subject.calculate_outcome(:scissors, :rock)).to eq :rock
      expect(subject.calculate_outcome(:rock, :scissors)).to eq :rock
    end

    it "beats paper" do
      expect(subject.calculate_outcome(:scissors, :paper)).to eq :scissors
      expect(subject.calculate_outcome(:paper, :scissors)).to eq :scissors
    end

    it "draws with scissors" do
      expect(subject.calculate_outcome(:scissors, :scissors)).to eq :draw
    end
  end
    
  describe 'paper' do
    it "loses to scissors" do
      expect(subject.calculate_outcome(:scissors, :paper)).to eq :scissors
      expect(subject.calculate_outcome(:paper, :scissors)).to eq :scissors
    end

    it "beats rock" do
      expect(subject.calculate_outcome(:rock, :paper)).to eq :paper
      expect(subject.calculate_outcome(:paper, :rock)).to eq :paper
    end

    it "draws with paper" do
      expect(subject.calculate_outcome(:paper, :paper)).to eq :draw
    end
  end
end
