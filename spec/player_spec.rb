require 'player'

describe Player do
  subject(:tom) { Player.new('Tom') }

  it 'returns the name' do
    expect(tom.name).to eq 'Tom'
  end

  it 'accepts a move and returns that move' do
    tom.move = :rock
    expect(tom.move).to eq :rock
  end
  
end
