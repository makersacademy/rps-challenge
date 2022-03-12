require 'player.rb'

describe Player do

  let(:adam) { double :adam }

  it 'should initialise with a name' do
    player = Player.new(:adam)
    expect(player.name).to eq :adam
  end

end