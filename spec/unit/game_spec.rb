require './lib/game'

describe Game do

  let(:game) { Game.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'can decide the winner' do

    allow(player1).to receive(:move) { 'ROCK' }
    allow(player2).to receive(:move) { 'PAPER' }
    allow(player2).to receive(:name) { 'Ozzy' }
    expect(game.result(player1.move, player2.move)).to eq "#{player2.name} wins!"

  end

end
