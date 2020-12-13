require 'game'

describe Game do
  let(:player) { double(:player, name:'Luna')}
  let(:game) { Game.new(player) }

  it 'takes in player name and choice' do
    allow(player).to receive(:choice).and_return("rock")
    expect(game.player.name).to eq "Luna"
    expect(game.player.choice).to eq "rock"
  end

  it 'gives a random choice' do
    allow(self).to receive(:generate_random).and_return :scissors
    expect(game.computer_choice).to eq :scissors
  end
end