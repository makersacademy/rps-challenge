require 'player'

describe 'Player' do 
  subject(:josh) { Player.new("Josh") }

  it 'returns the name of the player' do 
    expect(josh.name).to eq 'Josh'
  end
end
