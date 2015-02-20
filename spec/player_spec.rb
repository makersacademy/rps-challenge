require 'player'

describe Player do

  let(:player) { Player.new("Kevin") }

  it 'should have a name' do
    expect(player.name).to eq "Kevin"
  end

  it 'should start game without making a choice' do
    expect(player.choice).to eq nil
  end

end