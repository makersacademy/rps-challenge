require "game"

describe Game do

  # Mocks and stubs
  let(:player) { double "Player.new", name: "Melvin" }

  # Game class
  let(:game_class) { described_class }
  let(:game_instance) { game_class.create(player) }

  describe "#self.create" do
    it "initializes a game with access to player #name method" do
      expect(game_instance.player.name).to eq player.name
    end
  end

  describe "#self.instance" do
    it "stores the instance of Game" do
      a_game = game_class.create(player)
      expect(game_class.instance).to eq a_game
    end
  end

end
