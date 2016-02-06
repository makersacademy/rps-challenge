require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }
  
  it 'gets the players name' do
    allow(player).to receive(:name) { "Dave" }
    expect(game.player).to eq 'Dave'
  end
end