require 'player'

describe Player do
  let(:player) { described_class.new("Dumbledore") }

  describe "initialize" do
    it "should start with no chosen option" do
      expect(player.chosen_option).to be nil
    end
  end

  describe "#choose_option" do
    it "should assign a chosen option" do
      player.choose_option("paper")
      expect(player.chosen_option).to eq "paper"
    end
  end
end
