require 'game'

describe Game do
  subject(:game) { Game.new(player, console) }
  let(:player) { double(:player) }
  let(:console) { double(:console) }

   it 'returns player' do
     expect(game.player).to eq player
   end

   it 'returns console' do
     expect(game.console).to eq console
   end 
end
