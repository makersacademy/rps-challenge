require 'game.rb'
require 'player.rb'

describe Game do

  let(:player_1) { instance_double("Player") }
  let(:player_2) { instance_double("Player") }
  let(:game_class) { described_class }

  describe "#game_instance" do
    it "contains latest game instance" do
      new_game = described_class.new(player_1: player_1, player_2: player_2)
      expect(game_class.game_instance).to eq new_game
    end
  end

  subject(:game) { described_class.new(player_1: player_1, player_2: player_2) }

  describe "#players" do
    it "returns player 1" do
      expect(game.players[:player_1]).to eq player_1
    end
    it "returns player 2" do
      expect(game.players[:player_2]).to eq player_2
    end
  end



end
