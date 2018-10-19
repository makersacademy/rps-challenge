require 'game'

describe Game do

  let(:player) { double :player }

  before do
    Game.new(player)
  end

  describe "#self.new" do
    # As a marketeer
    # So that I can see my name in lights
    # I would like to register my name before playing an online game
    it "can store a new player" do
      expect(Game.player).to eq player
    end
  end

  describe "#self.play" do
    # As a marketeer
    # So that I can enjoy myself away from the daily grind
    # I would like to be able to play rock/paper/scissors
    it "returns :win if player wins" do
      expect(Game.play(:paper)).to eq :win
    end

    it "returns :draw if player draws" do
      expect(Game.play(:rock)).to eq :draw
    end

    it "returns :lose if player loses" do
      expect(Game.play(:scissors)).to eq :lose
    end
  end
end
