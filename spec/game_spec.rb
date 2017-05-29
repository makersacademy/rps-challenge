require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  it 'has a player1 and player2' do
    expect(game.player1).to eq player1
    expect(game.player2).to eq player2
  end
end
