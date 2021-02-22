require 'game'
require 'player'

describe Player do

  describe '#make_move' do
    it'changes @move to its argument' do
    player = Player.new
    player.make_move('rock')
    expect(player.move).to eq 'rock'
    end
  end
end
