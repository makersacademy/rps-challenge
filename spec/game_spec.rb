require 'game'
describe Game do
  subject(:game) { described_class.new('Alex', 'computer') }

  describe "#player" do
    it "returns the game with player's name" do
      expect(game.player).to eq 'Alex'
    end
  end

  describe "#computer" do
    it "returns the game with computer's name" do
      expect(game.computer).to eq 'computer'
    end
  end


end
