class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def play
    player_1.make_move
    player_2.make_move
  end
end

describe Game do
  let(:player_1) { double :player, :make_move => nil }
  let(:player_2) { double :player, :make_move => nil }
  subject(:game) { described_class.new(player_1, player_2)}

  describe "players" do
    it "has a Player 1" do
      expect(game.player_1).to eq player_1
    end
    it "has a Player 2" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "moves" do
    it "asks Player 1 to make a selection" do
      game.play
      expect(player_1).to have_received(:make_move)
    end
    it "asks Player 2 to make a selection" do
      game.play
      expect(player_2).to have_received(:make_move)
    end
  end
end
