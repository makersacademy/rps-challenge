require './lib/game.rb'

describe Game do
  let(:player_double) { double :player }
  subject(:game) { described_class.new(player_double) }

   it 'accepts one instance of player' do
     expect(game.player).to eq player_double
   end

end
