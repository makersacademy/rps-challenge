require 'game'

describe Game do
  let(:player) { double :player, name: 'Player', wins: 3, loses: 3 }
  let(:game) { Game.new(player, 5) }

  it 'has player' do
    expect(game.player.name).to eq 'Player'
  end

  it 'gets best_of number' do
    expect(game.best_of).to eq 5
  end

  it 'has default best of 5' do
    default_game = Game.new(player, "")
    expect(default_game.best_of).to eq 5
  end

  it 'knows when player has won' do
    expect(game).to be_won
  end

  it 'knows when player has lost' do
    expect(game).to be_lost
  end

end
