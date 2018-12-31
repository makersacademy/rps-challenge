require 'game'

describe Game do
  it 'holds 2 players' do
    player1 = double(:player, name: "Caitlin", move: :rock)
    player2 = double(:player, name: "James", move: :scissors)

    Game.create(player1, player2)
    expect(Game.players.first).to eq player1
    expect(Game.players.last).to eq player2
  end
end
