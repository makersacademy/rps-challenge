require 'game'
require 'player'
require 'machine'

describe "User Stories" do
  let(:player) { Player.new("Harley Quinn") }
  let(:machine) { Machine.new("SeekNDstroy") }
  let(:game) { Game.new(player,machine) }

  context "before playing an online game" do
    it "player could enter their name" do
      expect(player.name).to eq "Harley Quinn"
    end
  end

  context "after registering player's name" do
    it "machine's name is assgined randomly" do
      expect(machine.name).to eq "SeekNDstroy"
    end
    it "game is started" do
      expect(game.players).to include (player)
    end
  end

  context "playing the game" do
    it "player chooses one weapon" do
      expect(player.choose(:paper)).to eq player.weapon
    end
    it "machine's weapon is chosen randomly" do
      expect(machine.choose).to eq machine.weapon
    end
  end

  describe "#win?" do
    before do
      player.choose(:paper)
    end

    it "is true when the player's weapon wins the machine's weapon" do
      allow(machine).to receive(:weapon).and_return(:rock)
      expect(game.win?).to be true
    end
    it "is false when the player's weapon doesn't win the machine's weapon" do
      allow(machine).to receive(:weapon).and_return(:scissors)
      expect(game.win?).to be false
    end
  end

  describe "#draw?" do
    before do
      player.choose(:paper)
    end
    it "is true when player and machine have the same weapon" do
      allow(machine).to receive(:weapon).and_return(:paper)
      expect(game.draw?).to be true

    end
    it "is false when player and machine have different weapons" do
      allow(machine).to receive(:weapon).and_return(:scissors)
      expect(game.draw?).to be false
    end
  end

end
