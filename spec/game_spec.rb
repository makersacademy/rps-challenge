require 'game'

describe Game do

  let(:player) { double :player }
  let(:computer) { double :computer }
  subject(:game) {described_class.new(player, computer)}


  describe "initialization" do

    it "has a player" do
      expect(game.player).to eq player
    end

    it "has a computer" do
      expect(game.computer).to eq computer
    end

  end

  describe "playing a game" do

    it "returns a fixed winner" do
      expect(game.winner).to eq player
    end

  end

  describe "getters and setters" do

    it "creates a new game" do
      set_game = described_class.set(player, computer)
      expect(set_game.player).to eq player
    end

    it "accesses games that are created" do
      set_game = described_class.set(player, computer)
      get_game = described_class.get
      expect(get_game.player).to eq player
    end

  end

end
