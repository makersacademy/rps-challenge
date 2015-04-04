require 'player'
describe Player do
  it 'has a name' do
    player = described_class.new("Jade")
    expect(player.name).to eq "Jade"
  end
end
