require 'capybara/rspec'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Player can play ‘Rock, Paper, Scissors’ –' do
  scenario 'Player can win the game' do
    player = Player.new 'Player'
    opponent = Player.new 'Opponent'
    player.select_action :rock
    opponent.select_action :scissors
    player_hash = { name: player.name, action: player.action }
    opponent_hash = { name: opponent.name, action: opponent.action }
    round = Round.new player_hash, opponent_hash
    expect(round.winner).to equal player.name
  end
end
