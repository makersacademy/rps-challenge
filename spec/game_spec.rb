require "game"
require "player"

describe Game do
  #let(:charlotte) { Player.new("Charlotte") }

  describe "#determine_winner" do
    let(:charlotte_rock) { double :player, name: "Charlotte", move: "Rock" }
    let(:charlotte_scissor) { double :player, name: "Charlotte", move: "Scissors" }
    let(:charlotte_paper) { double :player, name: "Charlotte", move: "Paper" }

    it "checks player rock beats bots scissors" do
      srand(3)
      game = Game.new(charlotte_rock)
      expect(game.determine_winner).to eq "Charlotte's Rock beats Bot's Scissors"
    end

    it "checks bot's paper beats player's rock" do
      srand(1)
      game = Game.new(charlotte_rock)
      expect(game.determine_winner).to eq "Bot's Paper beats Charlotte's Rock"
    end

    it "checks bot's rock beat's player's scissors" do
      srand(2)
      game = Game.new(charlotte_scissor)
      expect(game.determine_winner).to eq "Bot's Rock beats Charlotte's Scissors"
    end

    it "checks player's paper beat's bots rock" do
      srand(2)
      game = Game.new(charlotte_paper)
      expect(game.determine_winner).to eq "Charlotte's Paper beats Bot's Rock"
    end
  end
end
