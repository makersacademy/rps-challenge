require 'player'

describe Player do
  let(:player) { described_class.new("Bob") }

  it 'returns a #name' do
    expect(player.name).to eq "Bob"
  end

  it 'returns a #choice' do
    player.choose("Rock")
    expect(player.choice).to eq "Rock"
  end
end
