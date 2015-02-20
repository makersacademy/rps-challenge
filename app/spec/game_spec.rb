require 'game'

describe 'Game' do

  let(:player1) {double :player}
  let(:player2) {double :player}
  let(:game) {Game.new(player1)}

  it 'can be initalized with 1 player.' do
    expect(game.player1).to eq player1
  end

  it 'can be initalized with 2 players.' do
    game2 = Game.new(player1,player2)
    expect(game2.player2).to eq player2
  end

  it 'can add a player if there is not already 2 players' do

    game.add_player(player2)
    expect(game.player2).to eq player2

  end



end