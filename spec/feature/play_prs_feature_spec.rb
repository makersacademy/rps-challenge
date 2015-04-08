require 'capybara/rspec'
require 'papers_game'

feature 'Paper Rock Scisscors Game' do
  let(:player) { Player.new }
  let(:game) { PapeRSGame.new }

  scenario 'can assess a play that results in a tie' do
    player.selects('r')
    allow(game).to receive(:plays).and_return 'r'
    expect(game.tie? player).to eq false
  end

  scenario 'can assess a play that does not result in a tie' do
    player.selects('r')
    allow(game).to receive(:plays).and_return 'p'
    expect(game.tie? player).to eq false
  end

  scenario 'can assess when player wins' do
    player.selects('r')
    allow(game).to receive(:plays).and_return 's'
    expect(game.player_win?(player)).to eq false
  end

  scenario 'can assess when player loses' do
    player.selects('p')
    allow(game).to receive(:plays).and_return 's'
    expect(game.player_win?(player)).to eq false
  end
end
