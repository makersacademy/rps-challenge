require 'capybara/rspec'
require 'game'
require 'player'

feature 'Set up a game of rock, paper, scissors' do

  let(:game) { Game.new Player }

  xscenario 'player can register with name and be be presented with options of RPS' do
    # expect(player.ships.count).to eq 8
  end

end