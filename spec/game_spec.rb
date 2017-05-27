require 'game'

describe Game do
  subject(:game) { described_class.new(player, opponent) }
  let(:player) { double(:player) }
  let(:opponent) { double(:opponent) }

  it 'knows who is in the game' do
    expect(game.players).to eq [player, opponent]
  end
end
