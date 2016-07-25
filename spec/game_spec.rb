require "game"

describe Game do
  let(:weapons) { [:rock, :paper, :scissors] }
  let(:game) { described_class.create("Arunas") }

  it "stores an instance of a game itself" do
    new_game = described_class.create("Some name")
    expect(described_class.instance).to eq new_game
  end

  it "stores player name" do
    expect(game.player_name).to eq "Arunas"
  end

  it "stores the player's choice of weapon" do
    game.choose_weapon(:rock)
    expect(game.player_weapon).to eq :rock
  end

  it "allows to generate a random computer weapon" do
    game.rand_computer_weapon
    expect(weapons).to include game.computer_weapon
  end

  describe "#game_even?" do
    it "returns true if both player and computer have chosen the same thing" do
      allow(game).to receive(:computer_weapon).and_return(:rock)
      game.choose_weapon(:rock)
      expect(game.game_even?).to be true
    end
  end
  describe "#player_wins?" do
    it "returns true if player wins" do
      allow(game).to receive(:computer_weapon).and_return(:rock)
      game.choose_weapon(:paper)
      expect(game.player_wins?).to be true
    end
    it "returns false if player loses" do
      allow(game).to receive(:computer_weapon).and_return(:scissors)
      game.choose_weapon(:paper)
      expect(game.player_wins?).to be false
    end
  end
end
