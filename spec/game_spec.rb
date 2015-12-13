require 'game'

describe Game do
  subject(:game) { described_class.new(:player_1) }

  it 'returns the name of the participating players' do
    expect(game.players).to eq [:player_1]
  end
end
