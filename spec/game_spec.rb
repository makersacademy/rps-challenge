require 'game'

describe Game do
  subject(:game_class) { described_class }

  it 'Store player name' do
    game = game_class.new("Reena")
    expect(game.player).to eq "Reena"
    p game_class.current
  end

  describe "#create" do
    it "should create a new game" do
      game_class.create("Reena")
      expect(game_class.current).to be_a(Game)
    end
  end

  it "should have a game with player name Reena" do
    expect(game_class.current.player).to eq "Reena"
  end
end
