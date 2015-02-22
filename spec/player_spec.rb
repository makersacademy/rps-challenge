require 'player.rb'

describe Player do
  let(:player){Player.new}

  it 'should be able to pick rock in option' do
    expect(player.choice('rock')).to eq :rock
  end

  it 'should be able to pick paper in option' do
    expect(player.choice('paper')).to eq :paper
  end

  it 'should be able to pick scissors in option' do
    expect(player.choice('scissors')).to eq :scissors
  end

end