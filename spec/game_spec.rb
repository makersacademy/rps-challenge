require "game"
require "computer"
require "capybara/rspec"

describe Game do

it 'initializes with computer for default as player 2' do
  player1 = Player.new("Player1")
  game = Game.new(player1)
  expect(game.players_names).to eq ["Player1", "Computer"]
end

it 'starts each round allowing the user to play first' do
  player1 = Player.new("Player1")
  game = Game.new(player1)
  expect(game.turn).to eq player1
end

it 'stores player1 as first element and player2 as second element in array of players' do
player1 = Player.new("Player1")
player2 = Computer.new
p player2
game = Game.new(player1, player2)
expect(game.player_1_turn).to eq player1
expect(game.player_2_turn).to eq player2
end

it 'acknowledges when there is no multiplayer' do
  player1 = Player.new("Player1")
  game = Game.new(player1)
  expect(game.multiplayer?).to eq false
end

it 'resets to player1' do
  player1 = Player.new("Player1")
  game = Game.new(player1)
  game.player_1_turn
  game.player_2_turn
  game.reset_player_1_turn
  expect(game.turn).to eq player1
end

it 'can reset to player1 turn when not in multiplayer mode' do
  player1 = Player.new("Player1")
  game = Game.new(player1)
  game.player_1_turn
  expect(game.players_turn).to eq player1
end

it 'can switch to player2 turn in multiplayer mode' do
  player1 = Player.new("Player1")
  player2 = Player.new("Player2")
  game = Game.new(player1, player2)
  game.player_1_turn
  expect(game.players_turn).to eq player2
end


end
