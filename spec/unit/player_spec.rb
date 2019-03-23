require 'player'

describe Player do
  subject(:player) { described_class.new("Riya") }

  it 'returns a name' do
    expect(player.name).to eq 'Riya' 
  end
end
