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

  describe "#move" do
    it 'responds to method move' do
      expect(game).to respond_to(:move).with(2).arguments
    end
  end

  describe "#result" do
    it 'responds to method result' do
      expect(game).to respond_to(:result)
    end
  end

end
