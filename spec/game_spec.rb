require './lib/game.rb'

describe Game do

  subject(:game) {described_class.new("Louisa")}
  let(:player_name) {double :Player}

  describe "#initializing" do
    context "Initializing with a player" do
      it "should accept a new Player instance" do
        expect(game.player1).to eq "Louisa"
      end
    end
  end

  describe "Instance of game" do
    context "#Game.create(player)" do
    it "should create a new instance of a game" do
      expect(Game.create("Louisa")).to be_a(Game)
    end
  end
    context "#Game.instance" do
      it "should access the new instance of the Game" do
        game = Game.create("Louisa")
        expect(Game.instance).to eq game
      end
    end
  end




end
