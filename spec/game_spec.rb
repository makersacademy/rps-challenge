require 'game'

describe Game do
  subject(:win_game) { described_class.new(win_options) }
  subject(:lose_game) { described_class.new(lose_options) }
  subject(:draw_game) { described_class.new(draw_options) }
  # options come from the session, which is a hash (that's why the syntax is a hash within a hash)
  let(:win_options) { { "name" => "Sam", "choice" => "Rock", "bot_choice" => "Scissors" } }
  let(:lose_options) { { "name" => "Sam", "choice" => "Rock", "bot_choice" => "Paper" } }
  let(:draw_options) { { "name" => "Sam", "choice" => "Rock", "bot_choice" => "Rock" } }

  describe "#name" do
    it "shows the name of the player" do
      expect(win_game.name).to eq "Sam"
    end
  end

  describe "#choice" do
    it "shows the choice made by the player" do
      expect(win_game.choice).to eq "Rock"
    end
  end

  describe "#bot_choice" do
    it "shows the choice of the bot" do
      expect(win_game.bot_choice).to eq "Scissors"
    end
  end

  context "game ends" do

    describe "#win?" do
      it "will be true if the user has won" do
        expect(win_game.win?).to eq true
      end

      it "will be false if the user has lost" do
        expect(lose_game.win?).to eq false
      end

      it "will be nil if there is a draw" do
        expect(draw_game.win?).to eq nil
      end
    end
  end
end
