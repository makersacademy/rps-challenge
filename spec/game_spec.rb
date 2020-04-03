require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:rps) { Game.new(first:player1,second:player2) }

  it " should be able to hold the two game players Part 1" do
    expect(rps.player_one).to eq(player1)
  end
  
  it " should be able to hold the two game players Part 2" do
    expect(rps.player_two).to eq(player2)
  end
  
end