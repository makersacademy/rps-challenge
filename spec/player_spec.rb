require 'player'

describe Player do
  let(:player){ described_class.new("Andrew") }
  it 'should have a name' do
    expect(player.name).to eq("Andrew")
  end
  it 'should show what it has chosen' do
    expect(player).to respond_to(:choice)
  end
end
