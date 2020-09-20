require "game"
require "player"

describe Game do
  describe "#determine_winner" do
    let(:charlotte_rock) { double :player, name: "Charlotte", move: "Rock" }
    let(:charlotte_scissor) { double :player, name: "Charlotte", move: "Scissors" }
    let(:charlotte_paper) { double :player, name: "Charlotte", move: "Paper" }
    let(:bot_rock) { double :player, name: "Bot", move: "Rock" }
    let(:bot_scissor) { double :player, name: "Bot", move: "Scissors" }
    let(:bot_paper) { double :player, name: "Bot", move: "Paper" }

    it "checks player rock beats bots scissors" do
      game = Game.new(charlotte_rock, bot_scissor)
      expect(game.determine_winner).to eq "Charlotte's Rock beats Bot's Scissors"
    end

    it "checks bot's paper beats player's rock" do
      game = Game.new(charlotte_rock, bot_paper)
      expect(game.determine_winner).to eq "Bot's Paper beats Charlotte's Rock"
    end

    it "checks bot's rock beat's player's scissors" do
      game = Game.new(charlotte_scissor, bot_rock)
      expect(game.determine_winner).to eq "Bot's Rock beats Charlotte's Scissors"
    end

    it "checks player's paper beat's bots rock" do
      game = Game.new(charlotte_paper, bot_rock)
      expect(game.determine_winner).to eq "Charlotte's Paper beats Bot's Rock"
    end
  end
end
