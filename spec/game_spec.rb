require 'game'

describe Game do

  let(:player_move) { double :player_move }
  let(:game) { Game.new(player_move) }

  it 'picks rock, paper, scissors at random' do
    srand(0)
    expect(game.play).to eq 'Rock'
  end

  it 'picks rock, paper, scissors at random' do
    srand(1)
    expect(game.play).to eq 'Paper'
  end

end
