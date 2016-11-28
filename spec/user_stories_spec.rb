require 'game'
require 'player'
require 'machine'

describe "User Stories" do
  context "one player and one machine" do
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

  context "two players" do
    let(:player1) { Player.new("Harley Quinn") }
    let(:player2) { Player.new("SeekNDstroy") }
    let(:game) { Game.new(player1,player2) }

    context "before playing an online game" do
      it "player could enter their name" do
        expect(player1.name).to eq "Harley Quinn"
      end
    end

    context "after registering player's name" do
      it "machine's name is assgined randomly" do
        expect(player2.name).to eq "SeekNDstroy"
      end
      it "game is started" do
        expect(game.players).to include (player1)
        expect(game.players).to include (player2)
      end
    end

    context "playing the game" do
      it "player 1 chooses one weapon" do
        expect(player1.choose(:paper)).to eq player1.weapon
      end
      it "player 2's weapon is chosen randomly" do
        expect(player2.choose(:rock)).to eq player2.weapon
      end
    end

    describe "#win?" do
      before do
        player1.choose(:paper)
      end

      it "is true when the player 1's weapon wins the player 2's weapon" do
        player2.choose(:rock)
        expect(game.win?).to be true
      end
      it "is false when the player 1's weapon doesn't win the player 2's weapon" do
        player2.choose(:scissors)
        expect(game.win?).to be false
      end
    end

    describe "#draw?" do
      before do
        player1.choose(:paper)
      end
      it "is true when player and machine have the same weapon" do
        player2.choose(:paper)
        expect(game.draw?).to be true

      end
      it "is false when player and machine have different weapons" do
        player2.choose(:scissors)
        expect(game.draw?).to be false
      end
    end
  end
end
