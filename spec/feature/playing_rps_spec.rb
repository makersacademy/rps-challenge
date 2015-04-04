require 'capybara/rspec'
require 'game'
require 'player'
require 'cpu'

feature 'Whem playing rock, paper, scissors' do
  scenario 'a new game with a player and a cpu can be created' do
    player1 = Player.new 'Jack'
    player2 = Player.new 'Alex'
    two_player_game = Game.new player1, player2
    expect(two_player_game.player_one.name).to eq 'Jack'
    expect(two_player_game.player_two.name).to eq 'Alex'
  end
end
