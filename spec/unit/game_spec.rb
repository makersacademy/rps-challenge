require './lib/game'

describe Game do

  let(:game) { Game.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'can tell if player 2 wins' do

    allow(player1).to receive(:move) { 'ROCK' }
    allow(player2).to receive(:move) { 'PAPER' }
    expect(game.result(player1.move, player2.move)).to eq 2

  end

  it 'can tell if player 1 wins' do

    allow(player1).to receive(:move) { 'ROCK' }
    allow(player2).to receive(:move) { 'SCISSORS' }
    expect(game.result(player1.move, player2.move)).to eq 1

  end

  it 'can tell if there is a draw' do

    allow(player1).to receive(:move) { 'ROCK' }
    allow(player2).to receive(:move) { 'ROCK' }
    expect(game.result(player1.move, player2.move)).to eq 0

  end

end
