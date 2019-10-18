require 'result'

describe 'who_wins?' do
  it 'Determines a winner' do
    opponent = Opponent.new
    opponent.opponent_move = 'rock'
    # Player's move is rock
    expect(opponent.who_wins).to eq("It's a tie!")
  end
end
