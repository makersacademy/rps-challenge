require 'player'

describe Player do
  let(:player) { Player.new('Joe') }

  it 'has a name' do
    expect(player.name).to eq 'Joe'
  end

  it 'can choose one throw' do
    player.select(:rock)
    expect(player.choice).to eq :rock
  end

  xit 'can throw his/her choice' do
    player.throw #not sureif this is needed
  end

  xit 'has a name' do
    
  end

  xit 'has a name' do
    
  end
end