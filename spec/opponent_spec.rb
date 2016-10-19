require "opponent"

describe Opponent do
  subject(:opponent) { described_class.new }

  describe '#choice' do
    it "returns a random choice" do
      expect([:ROCK, :PAPER, :SCISSORS]).to include opponent.choice
    end
  end
end
