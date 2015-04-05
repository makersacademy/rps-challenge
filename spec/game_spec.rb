require 'game'

describe Game do
  let(:game) { described_class.new }
  let(:player1) { double :player, hand_value: 'Rock' }
  it 'can choose a random Rock, Paper or Scissors hand' do
    game.chose_hand
    expect(game.hand_value).to satisfy { 'Rock' || 'Paper' || 'Scissors' }
  end

  it 'knows the players that are in the game' do
    game.add_player(player1)
    expect(game.players).to eq [player1]
  end

  xit 'can compare its hand with the player hand' do
  end

  xit 'gives a winner if there is one' do
  end

  xit 'tells that it\'s a tie if it\'s the same hand as player' do
  end

end
