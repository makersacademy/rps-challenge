require './lib/game'
require './lib/player'

feature 'starting a game' do
  scenario 'when a game is initialised so is a player' do
     player = Player.new('name')
     game = Game.new(player)
     game.player.name
    expect(game.player.name).to eq 'name'
  end
end

feature 'translate a players choice into a number on the array' do
  scenario 'When a player chooses an option that is found in the array @words' do
     puts player = Player.new('name')
     puts game = Game.new(player)
    puts player.choose('rock')
    puts player
    expect(game.player_choice).to eq 0
  end
end
