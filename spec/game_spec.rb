require 'game'

describe Game do

  let(:player1) { double(:player1) }
  let(:computer) { double(:computer) }
  let(:new_game) { described_class.new(player1, computer) }

  describe "#player1" do
    context "when calling #player1" do
      it "should return player1" do
        expect(new_game.player1).to eq(player1)
      end
    end
  end

  describe "#start" do
    context "when starting a new game" do
      it "should return the current instance of the game" do
        Game.start(new_game)
        expect(Game.read).to eq(new_game)
      end
    end
  end

end
