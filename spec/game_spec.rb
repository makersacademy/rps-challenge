require 'game'

describe Game do
  
  let(:game) {described_class.new("Player")}

  it 'initailizes with a player' do
    expect(game.player).to be_a Player
  end

  it 'initailizes with a cpu' do
    expect(game.cpu).to be_a CPU
  end
  
end
