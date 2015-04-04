require 'game'

describe Game do
  let(:player1) { double :player }
  let(:player2) { double :player }
  let(:game) { described_class.new player1, player2 }

  it 'can be initialised with two players' do
    expect(game.player_one).to eq player1
    expect(game.player_two).to eq player2
  end
  # Testing can be initialised with cpu is redundant in unit test
end
