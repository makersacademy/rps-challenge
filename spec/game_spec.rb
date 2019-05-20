require 'player'
require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  # it 'accepts two player instances' do
  #   expect(game).to include(player).and include(computer)
  # end

  it 'accepts a player instance' do
    expect(game.player).to eq(player)
  end

  it 'accepts a computer instance' do
    expect(game.computer).to eq(computer)
  end


end
