require './lib/player.rb'

describe Player do
  subject(:player) {described_class.new('Tiana') }
  it 'returns the name of the player' do
    expect(player.name).to eq('Tiana')
  end

  it 'respond to method option' do
    expect(player).to respond_to(:option).with(1).argument
  end
end
