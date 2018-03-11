require 'game'

describe Game do

  it 'Store player name' do
    game = Game.new("Reena")
    expect(game.player).to eq "Reena"
  end

  describe "#current" do
    it "start with current game being nil" do
      expect(Game.current).to be nil
    end
  end

  describe "#create" do
    it "should create a new game" do
      Game.create("Reena")
      expect(Game.current).to be_a(Game)
    end
  end
end
