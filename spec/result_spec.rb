require 'result'

describe Result do
  context "when supplied with two hands in a game of RPS" do
    it "can determine the result of paper vs rock" do
      expect(described_class.run(:paper, :rock)).to eq :player_1
    end
    it "can determine the result of rock vs scissors" do
      expect(described_class.run(:rock, :scissors)).to eq :player_1
    end
    it "can determine the result of scissors vs paper" do
      expect(described_class.run(:scissors, :paper)).to eq :player_1
    end
    it "can determine the result of rock vs rock" do
      expect(described_class.run(:rock, :rock)).to eq :draw
    end
    it "can determine the result of paper vs paper" do
      expect(described_class.run(:paper, :paper)).to eq :draw
    end
    it "can determine the result of paper vs rock" do
      expect(described_class.run(:scissors, :scissors)).to eq :draw
    end
    it "can determine the result of rock vs paper" do
      expect(described_class.run(:rock, :paper)).to eq :player_2
    end
    it "can determine the result of paper vs scissors" do
      expect(described_class.run(:paper, :scissors)).to eq :player_2
    end
    it "can determine the result of rock vs paper" do
      expect(described_class.run(:rock, :paper)).to eq :player_2
    end
  end
end