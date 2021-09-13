require 'game'

describe Game do
  it 'returns possible moves' do
    expect(subject.moves).to eq(["Rock", "Paper", "Scissors"])
  end

  it 'selects a random move' do
    expect(subject.random_move).to eq('Rock').or eq('Paper').or eq('Scissors')
  end
end
