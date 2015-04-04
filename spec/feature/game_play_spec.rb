require 'capybara/rspec'
require 'game'
require 'AI'
require 'Player'

feature "A human can play against an AI and hear who has won" do

  scenario 'Human can win a game' do
    player = Player.new("Dan")
    ai = AI.new
    game = Game.new(player, ai)
    allow(ai).to receive(:choice).and_return('rock')
    player.choose('paper')
    expect(game.winner).to eq 'The Winner Is Dan'
  end

  it "selects correct winner's name from rock/paper" do
    player1 = Player.new("Dan")
    player2 = Player.new("Mary")
    player1.choose('rock')
    player2.choose('paper')
    game = Game.new(player1, player2)
    expect(game.winner).to eq 'The Winner Is Mary'
  end

  it "selects correct winner's name from scissors/rock" do
    player1 = Player.new("Dan")
    player2 = Player.new("Mary")
    player1.choose('scissors')
    player2.choose('rock')
    game = Game.new(player1, player2)
    expect(game.winner).to eq 'The Winner Is Mary'
  end

  it "selects correct winner's name from scissors/paper" do
    player1 = Player.new("Dan")
    player2 = Player.new("Mary")
    player1.choose('scissors')
    player2.choose('paper')
    game = Game.new(player1, player2)
    expect(game.winner).to eq 'The Winner Is Dan'
  end

  it "announces a draw" do
    player1 = Player.new("Dan")
    player2 = Player.new("Mary")
    player1.choose('rock')
    player2.choose('rock')
    game = Game.new(player1, player2)
    expect(game.winner).to eq "It's a draw!"
  end
end