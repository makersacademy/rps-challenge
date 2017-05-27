require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :computer }
  subject(:game) { described_class.new(player_1, player_2) }


  it 'each game should have a Player 1' do
    expect(game.player_1).to eq player_1
  end

  it 'each game should have a Player 2' do
    expect(game.player_2).to eq player_2
  end

end
