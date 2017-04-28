require './lib/player'

describe Player do

  let(:player) { described_class.new("Pietro") }

  it 'must have a name' do
    expect { described_class.new() } .to raise_error(ArgumentError)
  end

  it 'knows its name' do
    expect(player.name).to eq "Pietro"
  end

  it 'can be assigned a choice' do
    player.choice = :rock
    expect(player.choice).to eq :rock
  end

end
