require "game"

describe Game do

  # Mocks and stubs
  let(:player) { double "Player.new", name: "Melvin" }
  let(:computer) { double "Computer.new", move: "Rock" }

  # Game class
  let(:game_class) { described_class }
  let(:game_instance) { game_class.create(player, computer) }

  describe "#self.create initializes a game" do
    it "with access to player #name method" do
      expect(game_instance.player.name).to eq player.name
    end

    it "with access to computer #move method" do
      expect(game_instance.computer.move).to eq computer.move
    end
  end

  describe "#self.instance" do
    it "stores the instance of Game" do
      a_game = game_class.create(player, computer)
      expect(game_class.instance).to eq a_game
    end
  end

end
