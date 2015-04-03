require 'capybara/rspec'
require 'game'
require 'AI'
require 'Player'

feature "A human can play against an AI and hear who has won" do

  scenario 'Human can win a game' do
    player = Player.new("Dan")
    ai = AI.new
    game = Game.new(player, ai)
    ai.choice
    player.choose('paper')
    expect(game.winner?).to eq 'The Winner Is Dan'
  end
end