require 'game.rb'

# In this file I will put all of my testing for the
# Ruby code based on the user stories

# The user stores are as follows:
# #As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

describe 'I would like to register my name before playing an online game' do
  it 'registers name before playing an online game' do
    game = Game.new("Charlie Chaplin")
    expect(game.player).to eq("Charlie Chaplin")
  end
end
#
# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
