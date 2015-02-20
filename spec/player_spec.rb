require 'player'

describe Player do

  player = Player.new({:name => "Chris"})
  let(:paper) {double :weapon}

  it 'should be bale to set its name' do
    expect(player.name).to be_a String
  end

  it 'should be able to set its weapon' do
    player.weapon_choice = paper
    expect(player.weapon_choice).to eq paper
  end

end