require 'player'

describe Player do

  it 'A player can be given a name' do
    p1 = Player.new(:matt)
    expect(p1.name).to eq(:matt)
  end
end
