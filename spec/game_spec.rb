require './lib/game.rb'
require './lib/player.rb'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player_double) { double :player }

   it 'accepts one instance of player' do
     expect(game.player_double).to eq player_double
   end
end
