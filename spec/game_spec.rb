require 'game'

describe Game  do

  let(:game) {Game.new(player1, player2)}
  let(:player1) { double :player }
  let(:player2) {double :player }

  it 'should have two players when created' do
    expect(game.players.count).to eq 2
  end

  it 'if player1 picks rock and player2 picks scissors player1 wins' do
    allow(player1).to receive(:pick).and_return "Rock"
    allow(player2).to receive(:pick).and_return "Scissors"
    expect(game.winner).to eq player1
  end

  it 'if player1 picks paper and player2 picks rock' do
    allow(player1).to receive(:pick).and_return "Paper"
    allow(player2).to receive(:pick).and_return "Rock"
    expect(game.winner).to eq player1
  end

  it 'if player1 picks scissors and player2 picks paper' do
    allow(player1).to receive(:pick).and_return "Scissors"
    allow(player2).to receive(:pick).and_return "Paper"
    expect(game.winner).to eq player1
  end

    it 'if player1 picks paper and player2 picks paper' do
    allow(player1).to receive(:pick).and_return "Paper"
    allow(player2).to receive(:pick).and_return "Paper"
    expect(game.winner).to eq "Draw"
  end

end