require_relative '../../lib/game'

describe Game do
 
  let(:subject) {Game.new("Elvis")} 

  describe 'rock' do
    it "loses to paper" do
      expect(subject.winner_weapon(:rock, :paper)).to eq :paper
      expect(subject.winner_weapon(:paper, :rock)).to eq :paper
    end

    it "beats scissors" do
      expect(subject.winner_weapon(:rock, :scissors)).to eq :rock
      expect(subject.winner_weapon(:scissors, :rock)).to eq :rock
    end

    it "draws with rock" do
      expect(subject.winner_weapon(:rock, :rock)).to eq :draw
    end
  end
    
  describe 'scissors' do
    it "loses to rock" do
      expect(subject.winner_weapon(:scissors, :rock)).to eq :rock
      expect(subject.winner_weapon(:rock, :scissors)).to eq :rock
    end

    it "beats paper" do
      expect(subject.winner_weapon(:scissors, :paper)).to eq :scissors
      expect(subject.winner_weapon(:paper, :scissors)).to eq :scissors
    end

    it "draws with scissors" do
      expect(subject.winner_weapon(:scissors, :scissors)).to eq :draw
    end
  end
    
  describe 'paper' do
    it "loses to scissors" do
      expect(subject.winner_weapon(:scissors, :paper)).to eq :scissors
      expect(subject.winner_weapon(:paper, :scissors)).to eq :scissors
    end

    it "beats rock" do
      expect(subject.winner_weapon(:rock, :paper)).to eq :paper
      expect(subject.winner_weapon(:paper, :rock)).to eq :paper
    end

    it "draws with paper" do
      expect(subject.winner_weapon(:paper, :paper)).to eq :draw
    end
  end
end
