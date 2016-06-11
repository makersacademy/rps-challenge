require "game"

describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }
  subject { described_class.new(player1, player2) }

  describe "#players" do
    it "has 2 players" do
      expect(subject.players.count).to eq(2)
    end
  end

  describe "#self.instance" do
    it "returns an instance of a game" do
      expect(described_class.instance).to be_an_instance_of(described_class)
    end
  end
end
