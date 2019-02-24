require "player"
require "capybara/rspec"

describe Player do

it "stores the player's name" do
  player = Player.new("Player")
  expect(player.name).to eq "Player"
end

it "initializes with an empty move for the player" do
  player = Player.new("Player")
  expect(player.player_move).to eq nil
end

it "let's the player type in their move" do
  player = Player.new("Player")
  expect(player.player_move("rock")).to eq "rock"
end


end
