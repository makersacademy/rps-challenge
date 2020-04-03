require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:rps) { Game.new(first:player1,second:player2) }

  it " should be able to hold the two game players" do
    expect(rps.player_one).to eq(player1)
  end

end