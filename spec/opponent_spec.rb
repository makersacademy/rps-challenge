require "opponent"

describe Opponent do
  subject(:opponent) { described_class.new }

  describe "#move" do
    it "returns a random from the opponent" do
      expect(Opponent::MOVES).to include(opponent.move)
    end
  end
end
