 require 'game'

 describe Game do

   let(:player) { double :player }

   subject(:game) { described_class.new(player) }

   describe '#new' do

     it 'initializes with a player in' do
     expect(game.player).to eq player
   end
   end

 end
