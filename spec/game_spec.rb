require 'game'

describe Game do
  # options come from the session, which is a hash (that's why the syntax is a hash within a hash)
  let(:options) { { "name" => "Sam", "choice" => "Rock", "bot_choice" => "Scissors" } }
  subject(:game) { described_class.new(options) }

  describe "#name" do
    it "shows the name of the player" do
      expect(game.name).to eq "Sam"
    end
  end

  describe "#choice" do
    it "shows the choice made by the player" do
      expect(game.choice).to eq "Rock"
    end
  end

  describe "#bot_choice" do
    it "shows the choice of the bot" do
      expect(game.bot_choice).to eq "Scissors"
    end
  end

  describe "#win?" do
    it "will be true if the user has won" do
      expect(game.win?).to eq "win"
    end
  end
end
