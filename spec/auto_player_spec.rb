require './lib/auto_player'

describe AutoPlayer do
  subject { described_class.new("Holly") }

  it 'can recieve a name as an argument' do
    expect(described_class).to receive(:new).with(instance_of(String))
    described_class.new("Holly")
  end
  it 'can play a random move' do
    expect([:rock, :paper, :scissors]).to include subject.move
  end
  it 'gets a default name if one is not supplied' do
    player = described_class.new
    expect(player.name).to eq "Holly"
  end
end