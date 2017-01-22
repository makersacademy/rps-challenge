require 'game'

describe Game do
  let(:player) { double :player }
  subject(:game) {described_class.new(:player)}

  it 'initializes with a player' do
    expect(game.player).to eq :player
  end

end
