require 'player'

describe Player do
  subject(:tom) { Player.new('Tom') }

  it 'returns the name' do
    expect(tom.name).to eq 'Tom'
  end

  it 'accepts a move and returns that move' do
    tom.move = 'Rock'
    expect(tom.move).to eq 'Rock'
  end
  
end
