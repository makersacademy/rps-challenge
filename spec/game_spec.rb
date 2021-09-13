require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :computer }

  it "is an instance of Game" do
    expect(subject).to be_an_instance_of Game
  end

  describe "#player_1" do
    it "returns the name of player 1" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "returns the name of player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#check_result" do
    it "returns win" do
      expect(game.check_result(:Rock, :Lizard)).to eq :win
    end

    it "returns draw" do
      expect(game.check_result(:Rock, :Rock)).to eq :draw
    end

    it "returns loss" do
      expect(game.check_result(:Rock, :Paper)).to eq :loss
    end
  end
end
