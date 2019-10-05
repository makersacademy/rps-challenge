require "player"

describe Player do

  let(:player) { described_class.new("Melvin") }

  describe "#name" do
    it "returns the player name" do
      expect(player.name).to eq "Melvin"
    end
  end

  # describe "#move" do
  #   it "returns the player's move" do
  #     possible_moves = ["Rock", "Paper", "Scissors"]
  #     expect(possible_moves).to include player.move
  #   end
  # end

end
