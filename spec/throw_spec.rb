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
    srand(3) # to fixed the random sequence
    player.throw
    expect(player.choice).to eq :paper
  end
end