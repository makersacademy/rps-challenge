require 'game'
describe Game do
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }
  subject(:game) { described_class.new(player, computer)}

  it 'returns the Player object' do
    expect(game.player).to eq player
  end

  it 'returns the Computer object' do
    expect(game.computer).to eq computer
  end
end
