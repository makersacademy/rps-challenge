require "pc_player.rb"

describe PcPlayer do
  describe ".play" do
    it "gives rock back" do
      srand(67_810)
      expect(described_class.play).to eq "rock"
    end

    it "gives paper back" do
      srand(67_808)
      expect(described_class.play).to eq "paper"
    end

    it "gives scissors back" do
      srand(67_809)
      expect(described_class.play).to eq "scissors"
    end
  end
end
