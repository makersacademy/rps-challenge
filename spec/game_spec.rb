require "game"
require "player"

describe Game do
  subject(:game) {described_class.new(player1)}
  let(:player1)  {instance_double("Player", name: "Player1")}

  describe "#defaults" do
    it "initialises with a player" do
      expect(game.player1).to eq player1
    end
  end

  context "Rock" do
    describe "Player one uses Rock" do
      it "return Rock" do
        expect(game.fight_with("Rock")).to eq "Rock"
      end
    end
  end

end

describe "Game Instance" do
  let(:player1)  {instance_double("Player", name: "Player1")}

  it "Creates a new instance of a game" do
    game = Game.create(player1)
    expect(Game.instance).to eq game
  end
end
