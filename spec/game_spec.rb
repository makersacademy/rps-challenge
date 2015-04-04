require 'game'

describe Game do
  let(:player1) { double(:player1) }
  let(:player2) { double(:player2) }
  let(:game) { described_class.new player1, player2 }
  it 'has instance variables that are player names' do
    allow(player1).to receive(:name)
    expect(game.player1).to eq player1
  end

  it 'has a constant containing rules' do
    stub_const("Game::RULES", scissors: 'paper')
    game = described_class.new player1, player2
    expect(Game::RULES).to eq(scissors: 'paper')
  end

  it 'returns a draw if both weapons are the same' do
    allow(player1).to receive(:weapon).and_return('scissors')
    allow(player2).to receive(:weapon).and_return('scissors')
    expect(game.play).to eq 'DRAW!'
  end

  it 'puts playerN wins if one player wins' do
    allow(player1).to receive(:weapon).and_return('scissors')
    allow(player2).to receive(:weapon).and_return('rock')
    expect(game.play).to eq 'Player 2 Wins!!!'
  end
end
