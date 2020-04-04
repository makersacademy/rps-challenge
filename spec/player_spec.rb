require 'player'

describe Player do
  subject(:tom) { Player.new('Tom') }

  it 'returns the name' do
    expect(tom.name).to eq 'Tom'
  end
  
end
