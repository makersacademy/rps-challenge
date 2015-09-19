require 'player'

describe Player do

  let(:player) { Player.new("John") }

  before { player.choose(:rock) }

  it 'has a name - John' do
    expect(player.name).to eq "John"
  end

  it 'can make a choice' do
    expect(player.turns).to include(:rock)
  end

  it 'can see what you have chosen before' do
    player.choose(:paper)
    expect(player.turns).to contain_exactly(:rock, :paper)
  end

end
