require 'player'

describe Player do

  subject(:player1) {described_class.new("Dave")}
  subject(:player2) {described_class.new("Mittens")}

  context "#name" do
    it "returns players name" do
      expect(player1.name).to eq "Dave"
      expect(player2.name).to eq "Mittens"
    end
  end

  context "#selection" do
    it "initialises with nothing" do
      expect(player1.selection).to be nil
    end

    it "can be set to a value" do
      player1.selection = "rock"
      expect(player1.selection).to eq "rock"
    end
  end

end
