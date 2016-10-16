require 'game.rb'

 describe Game do
   game = Game.new

   describe '#play' do
     it 'chooses a random element of rock paper or scissors' do
     expect(game.play).not_to eq nil
   end
 end
 end
