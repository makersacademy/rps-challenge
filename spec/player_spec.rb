require './lib/player'

describe Player do

  let(:player) { described_class.new('Filipe') }

  it 'player initializes with a name' do
    expect(player.name).to eq 'Filipe'
  end
end
