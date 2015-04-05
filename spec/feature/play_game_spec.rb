require 'capybara/rspec'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Player can play Rock, Paper, Scissors –' do
  xscenario 'Player can win the game' do
    player = Player.new
    opponent = Player.new
    game = Game.new
    player.select_action(:rock)
    opponent.select_action(:scissors)
    expect(game).to be_won
  end
end
