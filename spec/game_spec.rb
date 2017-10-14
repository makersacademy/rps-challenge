require 'game'

describe Game do

  let(:game) { described_class.new(player_1)}
  let(:player_1) { double :player_1 }

  it 'returns the name of the player' do
    expect(game.player_1).to eq player_1
  end

  it 'should create and return an instance of itself' do
    
  end

end
