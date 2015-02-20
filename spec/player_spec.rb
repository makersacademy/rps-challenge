require 'player.rb'

describe Player do
  let(:player){Player.new}

  it 'should have a name' do
    expect(player.name).to eq "Player1"
  end

  it 'should pick an available option' do
    expect(player.choose('rock')).to eq :rock
  end

end