require 'game.rb'

describe Game do

 it 'returns the winning move based on both players moves' do
   game = Game.new
   expect(game.result('rock', 'scissors')).to eq('ROCK WINS')
 end

end
