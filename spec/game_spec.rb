require 'game'

describe Game do
  
  let(:game) { described_class.new("Player") }

  it 'initailizes with a player' do
    expect(game.player).to be_a Player
  end

  it 'initailizes with a cpu' do
    expect(game.cpu).to be_a CPU
  end

  it 'can determine a winner' do
    expect(game).to respond_to :winner
  end
  
end
