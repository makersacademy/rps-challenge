require 'game'

describe Game do
  let(:player) { double(:player) }
  let(:game) { described_class.new(player) }
  it 'starts with a player' do 
    expect(game.player).to eq player
  end
end