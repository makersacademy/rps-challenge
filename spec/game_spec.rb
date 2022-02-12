require_relative '../lib/game'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { double(:player) }

  it "should have a player" do
    expect(game.player).to eq player
  end

  it "can make a move" do
    game.make_move("Rock")
    expect(game.chosen_move).to eq "Rock"
  end

end
