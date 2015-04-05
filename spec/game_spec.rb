require 'game'

describe Game do
  game = described_class.new
  it 'can choose a random Rock, Paper or Scissors hand' do
    game.chose_hand
    expect(game.hand_value).to satisfy { 'Rock' || 'Paper' || 'Scissors' }
  end

  xit 'knows that there is a player online' do
  end

  xit 'can compare its hand with the player hand' do
  end

  xit 'gives a winner if there is one' do
  end

  xit 'tells that it\'s a tie if it\'s the same hand as player' do
  end

end
