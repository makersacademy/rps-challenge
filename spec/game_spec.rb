require './lib/game.rb'
require './app.rb'

describe Rps do
  it 'shows the game results' do
    player1 = instance_double('Player', name: 'Nico', move: 'rock' )
    bot = instance_double('Bot', name: 'Bot', move: 'rock')
  @results = results(player1.move,bot.move)
  expect(@results).to eq("You tied!")
  end
end
