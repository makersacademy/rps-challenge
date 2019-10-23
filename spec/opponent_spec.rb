require 'opponent'

describe '#Opponent' do
  it 'Computer can pick a move' do
    opponent = Opponent.new
    opponent.choose_selected_move('scissors')
    expect(opponent.opponent_move).not_to eq(nil)
  end

  it 'Computer can randomly pick a move' do
    opponent = Opponent.new
    opponent.choose_random_move
    expect(opponent.opponent_move).not_to eq(nil)
  end
end
