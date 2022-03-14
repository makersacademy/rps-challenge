require 'player'

describe Player do
  subject(:player) { described_class.new }

  describe ".instance" do
    it "returns an instance of Player" do
      expect(described_class.instance).to be_an_instance_of(Player)
    end
  end
  describe "#initialize" do
    it "score starts at 0" do
      expect(player.score).to eq 0
    end
  end
  describe "#increment_score" do
    it "adds 1 point to the score" do
      expect { player.increment_score }.to change { player.score }.by(1)
    end
  end
  describe "#move" do
    it "stores the move and corrects capitalisation" do
      player.move = "rock"
      expect(player.move).to eq "Rock"
    end
  end
  describe "#reset" do
    it "resets the score to 0" do
      player.increment_score
      expect { player.reset }.to change { player.score }.by(-1)
    end
    it "resets name" do
      player.name = "Rob"
      player.reset
      expect(player.name).to be_empty
    end
  end
end
