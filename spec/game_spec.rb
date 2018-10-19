require 'game'

describe Game do
  let(:player) { double :player }
  subject { described_class.new(player: player)}

  it "should return the player" do
    expect(subject.player).to eq player
  end

  describe "#self.create" do
    it "should return a Game" do
      expect(Game.create(player: player)).to be_a Game
    end
  end

  describe "self.instance" do
    it "should return the created Game" do
      game = Game.create(player: player)
      expect(Game.instance).to eq game
    end
  end
end
