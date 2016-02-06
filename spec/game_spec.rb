require 'game'

describe Game do

  let(:player1) {double :player}
  let(:player2) {double :player}

  subject(:game) {described_class.new(player1, player2)}

  it 'stores and returns player objects' do
    expect(game.player1).to eq player1
  end

end
