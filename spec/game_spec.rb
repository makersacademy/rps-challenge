require 'game'

describe Game do

  let (:player1) {double :player}
  let (:player2) {double :computer}

  it 'can declare a winner' do
    game = Game.new player1, player2
    3.times do
      allow(player2).to receive(:moves).and_return('rock')
      allow(player1).to receive(:moves).and_return('paper')
      game.referee
      allow(player1).to receive(:won).and_return 1
    end
    expect(game.referee).to eq "Player1 wins"
  end

  it 'can have a draw' do
    game = Game.new player1, player2
    allow(player2).to receive(:moves).and_return('rock')
    allow(player1).to receive(:moves).and_return('rock')
    expect(game.referee).to eq "draw"
  end
end