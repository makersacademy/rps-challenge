require 'game'
require 'player'

describe Game do
  
  let(:game) { described_class.new("Player") }

  it 'initailizes with a player' do
    expect(game.player).to be_a Player
  end

  it 'initailizes with a cpu' do
    expect(game.cpu).to be_a CPU
  end

  it 'can respond to winner' do
    expect(game).to respond_to :winner
  end

  it 'can declare a winner' do
    game.player.pick_weapon("Paper")
    expect(game.winner).to be true
  end
  
end
