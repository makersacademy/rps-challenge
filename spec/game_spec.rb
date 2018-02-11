require 'game'

describe Game do

  subject(:game_class) { Game }
  subject(:game) { described_class.new(player, opponent) }
  let(:player)   { double "The player" }
  let(:opponent) { double "The opponent" }
  
  describe "#initialize" do
    it "instantiates game with a player" do
      expect(game.player).to eq player
    end

    it "instantiates game with an opponent" do
      expect(game.opponent).to eq opponent
    end
  end

  describe "self#instance" do
    it "stores an instance of Game in a class instance variable" do
      expect(game_class.instance).to be_an_instance_of game_class
    end
  end
end
