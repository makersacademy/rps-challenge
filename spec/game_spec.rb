require 'game'

describe Game do
  # one off
  # player_double = double :Player, move: 'Rock'

  # for whole section
  # subject(:game) { described_class.new(player, computer) }
  # let(:player) { double :Player, move: 'Paper' }
  # let(:computer) { double :Computer, move: 'Rock' }

  it 'player wins with rock against scissors' do
    player_double = double :Player, move: 'Rock'
    computer_double = double :Computer, move: 'Scissors'
    game = Game.new(player_double, computer_double)
    expect(game.result).to eq :win
  end
  
end
