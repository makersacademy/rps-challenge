require 'player'

describe Player do
  subject(:player) { described_class.new('Paul') }
  it 'is initialized with player name' do
    expect(player.name).to eq 'Paul'
  end
end
