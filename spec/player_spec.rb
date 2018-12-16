require 'player'

describe Player do

  let(:player)  { Player.new("Samson") }

  it 'is created with a name' do
    expect(player.name).to eq("Samson")
  end
end
