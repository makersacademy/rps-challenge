require 'capybara/rspec'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Player can play ‘Rock, Paper, Scissors, Lizard, Spock’ –' do
  let!(:player) { Player.new 'Player' }
  let!(:opponent) { Player.new 'Opponent' }

  scenario 'Player can win the game' do
    player.select_action :rock
    opponent.select_action :scissors
    player_hash = { name: player.name, action: player.action }
    opponent_hash = { name: opponent.name, action: opponent.action }
    round = Round.new player_hash, opponent_hash
    expect(round.winner).to equal player.name
  end

  scenario 'Player can lose the game' do
    player.select_action :paper
    opponent.select_action :scissors
    player_hash = { name: player.name, action: player.action }
    opponent_hash = { name: opponent.name, action: opponent.action }
    round = Round.new player_hash, opponent_hash
    expect(round.winner).to equal opponent.name
  end

  scenario 'Player can draw the game' do
    player.select_action :paper
    opponent.select_action :paper
    player_hash = { name: player.name, action: player.action }
    opponent_hash = { name: opponent.name, action: opponent.action }
    round = Round.new player_hash, opponent_hash
    expect(round.winner).to equal nil
  end
end
