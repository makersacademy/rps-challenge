require "game"

describe Game do

  subject(:game) { described_class.new }

  describe "#match" do
    it "returns a draw" do
      expect(game.match("Rock", "Rock")).to eq "It's a draw"
    end
  end

end
