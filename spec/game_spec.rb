require 'game'

describe 'Game' do
  subject(:game) { Game.new(player) }
  let(:player) { double :player }
  
  it 'returns player names' do
    expect(game.player).to eq player
  end
end
