require 'game'

describe Game do

  game = Game.new("Tom")

  it 'has a player name on initialization' do
    expect(game.player_name).to eq('Tom')
  end

  it 'does not have a player move on initialization' do
    expect(game.player_move).to eq(nil)
  end

  # describe '#game_round' do
  #   it 'returns a draw if both hands are the same' do
  #     expect(game.game_round).to eq "Drawn"
  #   end
  #
  #   it 'returns win if player plays Rock and computer plays scissors' do
  #     expect(game.game_round('Rock', 'Scissors')).to eq "Won"
  #   end
  #
  #   it 'returns lose if player plays Rock and computer plays paper' do
  #     expect(game.game_round('Rock', 'Paper')).to eq "Lost"
  #   end
  # end
end
