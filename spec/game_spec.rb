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

  it 'can respond to win?' do
    expect(game).to respond_to :win?
  end

  it 'can declare a winner' do
    game.player.pick_weapon("Rock")
    expect(game.win?).to be true
  end

  it 'can start a new came' do
    old_cpu = game.cpu
    game.new_game
    expect(game.cpu).not_to eq old_cpu
  end
  
end
