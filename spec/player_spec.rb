require 'player'

describe Player do

  subject(:player) {described_class.new('Elizabeth')}

  it 'initializes with a name' do
    expect(player.name).to eq 'Elizabeth'
  end
end
