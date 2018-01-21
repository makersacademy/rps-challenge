require './lib/player.rb'

describe Player do
  subject(:player) {described_class.new('Tiana') }
  it 'returns the name of the player' do
    expect(player.name).to eq('Tiana')
  end
end
