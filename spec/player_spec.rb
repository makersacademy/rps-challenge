require 'player'

describe Player do
  subject(:player) {described_class.new('Vicky')}

  it 'is initialized with player name' do
    expect(player.name).to eq 'Vicky'
  end
end
