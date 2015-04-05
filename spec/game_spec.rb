require 'game'

describe Game do
  let(:game) { described_class.new }
  let(:player1) { double :player, hand_value: 'Rock' }
  let(:player2) { double :player, hand_value: 'Scissors' }
  let(:player2b) { double :player, hand_value: 'Rock' }
  before { game.add_player(player1) }

  it 'can choose a random Rock, Paper or Scissors hand' do
    game.cpu_random_hand
    expect(game.hand_value).to satisfy { 'Rock' || 'Paper' || 'Scissors' }
  end

  it 'knows the players that are in the game' do
    expect(game.players).to eq [player1]
  end

  it 'denies access to more than 2 players' do
    game.add_player(player2)
    expect { game.add_player(player2b) }.to raise_error 'Sorry! 2 players only!'
  end

  it 'can compare 2 hands and gives the winner\'s name' do
    game.add_player(player2)
    expect(game.winner).to eq player1
  end

  it 'returns Tie! if it\'s a tie' do
    game.add_player(player2b)
    expect { game.winner } .to raise_error 'Tie!'
  end

  it 'can player with the computer' do
    allow(game).to receive(:cpu_random_hand).and_return 'paper'
    expect(game.winner).to eq 'CPU'
  end
end
