require './lib/player'

describe Player do
  it 'can recieve a name as an argument' do
    expect(described_class).to receive(:new).with(instance_of(String))
    described_class.new("Rob")
  end

  it 'can return its name' do
    player = described_class.new("Rob")
    expect(player.name).to eq "Rob"
  end
end