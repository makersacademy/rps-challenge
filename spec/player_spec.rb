require 'player'

describe Player do
  let(:player) { described_class.new('Tom') }

  it 'stores players name' do
    expect(player.name).to eq('Tom')
  end
end
