describe 'These are the user stories' do
    
# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
it 'so the player can see name in lights, the player would like to register name' do
    player = Player.new
    name = Name.new
    expect { player.register(name) }.not_to raise_error
  end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
it 'so player can be entertained, player would like to play the game rock/paper/scissors' do
    player = Player.new
    game = Game.new
    expect { player.play(game) }.not_to raise_error
  end
end