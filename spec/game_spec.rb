require 'player'
require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }
  let(:player) { double :player }
  let(:computer) { double :computer }

  it 'accepts two player instances' do
    expect(game).to include(player).and include(computer)
  end


end
