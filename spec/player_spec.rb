require 'player'

describe Player do

  subject(:player) { described_class.new('Oliver') }

  it 'has a name' do
    expect(player.name).to eq 'Oliver' 
  end
end
