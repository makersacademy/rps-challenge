require './lib/game'

describe Game do

  it 'enables two players to join the game' do
    paul = double(:player)
    computer = double(:computer)
    game = Game.new(paul, computer)
    expect(game.players.count).to eq 2
  end

  it 'knows if there is a winner' do
    paul = double(:player, name: "Paul")
    computer = double(:computer)
    game = Game.new(paul, computer)
    allow(paul).to receive(:weapon).and_return "Paper"
    allow(computer).to receive(:weapon).and_return "Rock"
    expect(game.winner).to eq "Paul wins"
  end

  it 'knows when its a draw' do
    paul = double(:player, name: "Paul")
    computer = double(:computer)
    game = Game.new(paul, computer)
    allow(paul).to receive(:weapon).and_return "Rock"
    allow(computer).to receive(:weapon).and_return "Rock"
    expect(game.winner).to eq "Draw"
  end

end