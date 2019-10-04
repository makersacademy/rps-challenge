require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player, name: 'Finn' }
  let(:player2) { double :player, name: 'Jake' }

  it 'initializes with 2 players' do
    expect(game.player1.name).to eq 'Finn'
    expect(game.player2.name).to eq 'Jake'
  end

  

end