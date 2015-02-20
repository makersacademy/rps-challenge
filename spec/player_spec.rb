require 'player'

describe Player do

  let(:player) { Player.new("Kevin") }

  it 'should have a name' do
    expect(player.name).to eq "Kevin"
  end

end