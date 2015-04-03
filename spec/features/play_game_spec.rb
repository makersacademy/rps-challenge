require 'capybara/rspec'
require 'player'

feature 'play game of Rock-Paper-Scissors' do
  scenario 'player chooses his hand' do
    player = Player.new([:rock, :paper, :scissors])
    player.choose :rock
    expect(player.choice).to eq :rock
    expect do
      player.choose :item
    end.to raise_error 'Invalid Choice: only rock, paper or scissors available'
  end
end
