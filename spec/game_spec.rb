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

  it 'denies access to more than 2 players' do
    player2 = double :player
    player3 = double :player
    game.add_player(player1)
    game.add_player(player2)
    expect { game.add_player(player3) }.to raise_error 'Sorry ! 2 players only!'
  end

  xit 'can compare its hand with the player hand' do
  end

  xit 'gives a winner if there is one' do
  end

  xit 'tells that it\'s a tie if it\'s the same hand as player' do
  end

end
