require 'game'

describe Game do
  # options come from the session, which is a hash (that's why the syntax is a hash within a hash)
  let(:options) { { "name" => "Sam", "choice" => "rock", "bot_choice" => "paper" } }
  subject(:game) { described_class.new(options) }

  describe "#name" do
    it "shows the name of the player" do
      expect(game.name).to eq "Sam"
    end
  end

  describe "#choice" do
    it "shows the choice made by the player" do
      expect(game.choice).to eq "rock"
    end
  end

  describe "#bot_choice" do
    it "shows the choice of the bot" do
      expect(game.bot_choice).to eq "paper"
    end
  end
end
