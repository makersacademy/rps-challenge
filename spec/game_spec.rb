require 'game'

describe Game do
  let(:player) { double :player, name: 'Player', wins: 3, loses: 3 }
  let(:game) { Game.new(player) }

  it 'has player' do
    expect(game.player.name).to eq 'Player'
  end

  it 'knows when player has won' do
    expect(game).to be_won
  end

  it 'knows when player has lost' do
    expect(game).to be_lost
  end

end
