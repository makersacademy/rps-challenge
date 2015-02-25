require 'player'

describe Player do
  it 'is initialized with a name' do
    player = Player.new(name: 'Gabe')
    expect(player.name).to eq 'Gabe'
  end

  it 'can pick a shape' do
    player = Player.new
    player.pick(:rock)
    expect(player.shape).to eq :rock
  end
end