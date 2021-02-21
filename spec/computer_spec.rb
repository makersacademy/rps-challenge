require 'game'

describe Game do

  describe '#result' do
    it'returns win if you throw rock against scissors' do
    player = double()
    computer = double()
    game = Game.new(player,computer)
    allow(player).to receive(:move) {'rock'}
    allow(player).to receive(:move) {'scissors'}
    expect(game.result).to eq 'win'
   end
 end
end
