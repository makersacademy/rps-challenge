require "game"

describe Game do
  let(:michael) {double :player, name: "Michael", points: 0}
  let(:matrix) {double :engine, name: "MATRIX", points: 0}

  context "#initialize" do
    it "should have initiated a player" do
      allow(michael).to receive(:name).and_return("Michael")
      game = Game.new(michael)
      expect(game.player.name).to eq "Michael"
    end

    it "should have initiated the engine too" do
        expect(subject.engine).to be_an(Engine)
    end
  end

  context "#won" do
    it "should return the player who won" do
      expect([subject.player.name, subject.engine.name, "Draw!"]).to include subject.won(subject.player, subject.engine)
    end
  end
end