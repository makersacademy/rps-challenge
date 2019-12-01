require 'game'

describe Game do
  let(:player_1) { double(:player, name: "Harrison") }
  let(:player_2) { double(:player, name: "Computer") }
  subject(:game) { Game.new(player_1, player_2) }

  it "should have players" do
    expect(game).to have_attributes(player_1: player_1, player_2: player_2)
  end
end