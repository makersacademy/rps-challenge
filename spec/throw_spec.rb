# spec/throw_spec.rb

require 'player'

describe Player do
  it 'initialises with nil choice' do
    player = Player.new("Felix")
    expect(player.choice).to eq nil
  end

  it 'shows the name' do
    player = Player.new("Felix")
    expect(player.name).to eq "Felix"
  end

  it 'throws and can change the result' do
    player = Player.new("Felix")  
    # allow_any_instance_of(Player).to receive(:throw).and_return(:rock)
    player.throw
    expect(player.choice).to eq :rock
  end
end