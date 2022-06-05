require 'game'
require 'player'

describe Game do
  subject(:player_1) { Player.new("SH") }
  subject(:player_2) { ComputerPlayer.new }
  subject(:game) { Game.new(:player_1, :player_2) }

  it "Initializes" do
    expect(game.player_1).to eq :player_1
    expect(game.player_2).to eq :player_2
  end
  it "Confirms draw if selection is the same" do
    expect(game.current_round("Rock", "Rock")).to eq "draw"
  end
end