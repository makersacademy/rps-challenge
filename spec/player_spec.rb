require 'player'

describe Player do
  let(:player){ Player.new("Kate") }

  it 'should let a player have a name' do
    expect(player.name).to eq "Kate"
  end

  it 'should let a player make a choice' do
    expect(player.make_choice(:rock)).to eq :rock
  end




end