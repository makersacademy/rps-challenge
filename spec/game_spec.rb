require './lib/game.rb'
require './app.rb'

describe Rps do
  it 'shows the game results' do
  @results = results("rock","rock")
  expect(@results).to eq("You tied!")
  end
end
