require 'player.rb'

describe Player do
  let(:player){Player.new}

  it 'should have a name' do
    expect(player.name).to eq "Player1"
  end

  it 'should be able to pick rock in option' do
    expect(player.choose('rock')).to eq :rock
  end

  it 'should be able to pick paper in option' do
    expect(player.choose('paper')).to eq :paper
  end

  it 'should be able to pick scissors in option' do
    expect(player.choose('scissors')).to eq :scissors
  end

end