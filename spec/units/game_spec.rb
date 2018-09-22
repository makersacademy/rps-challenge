require 'game'

describe Game do
  subject(:game) { described_class.new }
  context "begins a new RPS game" do
    it "#new" do
      expect { game }.not_to raise_error
    end

    it "#move" do
      srand(2) # creates a seed for a random sequence -- begins with Rock
      expect(game.move).to eq "Rock"
    end
  end
end