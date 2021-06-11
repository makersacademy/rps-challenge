require 'player'

describe Player do

  subject(:sean) { Player.new('Sean') }
  subject(:tyson) { Player.new('Tyson') }

  it 'returns the name of the player' do
    expect(sean.name).to eq 'Sean'
  end

end