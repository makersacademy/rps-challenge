require 'player'

describe Player do

  subject(:player) { described_class.new('Sam') }
  it 'stores player\'s name' do
    expect(player.name).to eq 'Sam'
  end
end
