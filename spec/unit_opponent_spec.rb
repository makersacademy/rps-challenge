require 'opponent.rb'

describe Opponent do

  subject(:opponent) { described_class }

  describe "#choose_move" do
    it "returns a random move" do
      srand(1234)
      expect(opponent.choose_move).to eq :lizard
    end
  end

end
