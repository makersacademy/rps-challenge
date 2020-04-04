require 'game'

describe Game do
  # one off
  # player_double = double :Player, move: 'Rock'

  # for whole section
  # subject(:game) { described_class.new(player, computer) }
  # let(:player) { double :Player, move: 'Paper' }
  # let(:computer) { double :Computer, move: 'Rock' }

  it 'player wins with rock against scissors' do
    player_double = double :Player, move: :rock
    computer_double = double :Computer, move: :scissors
    game = Game.new(player_double, computer_double)
    expect(game.wins?).to eq true
  end

  it 'player loses with rock against paper' do
    player_double = double :Player, move: :rock
    computer_double = double :Computer, move: :paper
    game = Game.new(player_double, computer_double)
    expect(game.wins?).to eq false
  end
  
end
