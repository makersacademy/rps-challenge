class Game
  attr_reader :player, :player_selection

  def initialize(player)
    @player = player
  end

  def play
    player.make_move
  end
end

describe Game do
  let(:player) { double :player, :make_move => nil }
  subject(:game) { described_class.new(player)}

  it "has a player" do
    expect(game.player).to eq player
  end
  it "asks player to make a selection" do
    game.play
    expect(player).to have_received(:make_move)
  end

end
