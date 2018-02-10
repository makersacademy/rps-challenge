require 'game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double 'a player' }

  describe "#new" do
    it "sets @player using the passed argument" do
      expect(game.player).to eq player
    end
  end

  describe "::create" do
    context "when game not in progress" do
      it "should instantiate a new game" do
        expect(described_class.create(player)).to be_instance_of described_class
      end
    end

    context "when game in progress" do
      it "should not instantiate a new game" do
        existing_game = described_class.create(player)
        expect(described_class.create(player)).to eq existing_game
      end
    end
  end

  describe "::current_game" do
    context "when game in progress" do
      it "returns the current game" do
        existing_game = described_class.create(player)
        expect(described_class.current_game).to eq existing_game
      end
    end
  end
end
