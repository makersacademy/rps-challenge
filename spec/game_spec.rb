require './lib/game'

describe Game do

  # subject(:game) { described_class.new }

  let(:marie) { double }

  it 'should accept a player' do
    game = Game.new(marie)
    expect(game.player).to eq marie
  end
end
