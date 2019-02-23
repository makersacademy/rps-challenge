require './lib/game'

describe Game do

  let(:game) { Game.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'rock beats scissors' do

    allow(player1).to receive(:move) { 'ROCK' }
    allow(player2).to receive(:move) { 'SCISSORS' }
    expect(game.result(player1.move, player2.move)).to eq 1

  end

  it 'paper beats rock' do

    allow(player1).to receive(:move) { 'PAPER' }
    allow(player2).to receive(:move) { 'ROCK' }
    expect(game.result(player1.move, player2.move)).to eq 1

  end

  it 'scissors beats paper' do

    allow(player1).to receive(:move) { 'SCISSORS' }
    allow(player2).to receive(:move) { 'PAPER' }
    expect(game.result(player1.move, player2.move)).to eq 1

  end

  it 'declares a draw' do

    allow(player1).to receive(:move) { 'ROCK' }
    allow(player2).to receive(:move) { 'ROCK' }
    expect(game.result(player1.move, player2.move)).to eq 0

  end

end
