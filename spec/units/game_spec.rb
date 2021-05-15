require 'game'

describe Game do
  subject(:game) { described_class.new(player1, opponent) }
  let(:player1) { double :player1 }
  let(:opponent) { double :opponent }

  it 'returns the first player' do
    expect(game.player1).to eq player1
  end

  it 'returns the second player' do
    expect(game.opponent).to eq opponent
  end

  it

end 