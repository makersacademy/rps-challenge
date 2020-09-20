require "game"
require "player"

describe "Bot" do
  let(:bot) { Bot.new }

  it "expects player to be initalized with a player name" do
    expect(bot.name).to eq "Bot"
  end

  describe "#make_move" do
    it "stores the players move" do
      srand(3)
      bot.make_move
      expect(bot.move).to eq "Scissors"
    end

    it "stores the players move" do
      srand(2)
      bot.make_move
      expect(bot.move).to eq "Rock"
    end

    it "stores the players move" do
      srand(1)
      bot.make_move
      expect(bot.move).to eq "Paper"
    end
  end
end
