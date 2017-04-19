require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
    let(:player_attack) { "Paper" }
  let(:player) { double :player, name: "Sal", player_attack: player_attack }
    let(:hal_attack) { "Rock" }
  let(:hal) { double :hal, attack: "Rock", attack: hal_attack }


  context "the game starts" do
    it "with one player" do
      expect(game.player).to eq player
    end

    it "has attacks" do
      expect(game.attack).to eq "Paper"
    end
  end

  context "Player's info" do
    it "the game knows the player's name" do
      expect(game.player_name).to eq "Sal"
    end

    it "can store players attack" do
      game.set_attack("Paper")
      expect(game.player_attack).to eq "Paper"
    end
  end

  context "Has a virtual player" do
    it "recieves an attack from Hal/virtual player" do
      expect(hal.attack).to eq "Rock"
    end
  end

end
