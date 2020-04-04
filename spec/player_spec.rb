require 'player'

describe Player do
  it 'is created with a name' do
    player = Player.new('Phil')
    expect(player.name).to eq 'Phil'
  end

  it 'the name must be a string' do
    expect { Player.new(4) }.to raise_error 'name must be a string'  
  end

  it 'the name must be at least one character in length' do
    expect { Player.new('') }.to raise_error 'name must not be empty string'
  end
end
