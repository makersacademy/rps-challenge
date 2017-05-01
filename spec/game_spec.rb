require "./lib/game"

describe Game do

  let(:player_1) { double(:player_1)}
  let(:player_2) { double(:player_2)}
  let(:subject) { described_class.new(player_1, player_2) }

  describe "#setup" do
    it "checks that the game exists" do
      expect(subject).to be_an_instance_of(described_class)
    end

    it "sees that the players are used" do
      expect(subject.playing).to include player_2
    end
  end

  describe "#attacking" do
    it "finds the rock choice" do
      expect(subject.options).to include :rock
    end

    it "establishes whose turn it is" do
      expect(subject.current_turn).to eq player_1
    end
  end

end
