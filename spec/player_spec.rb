require 'player'

describe Player do
  subject(:player) { described_class.new('Jess')}

  it 'has a name' do
    expect(player.name).to eq 'Jess'
  end


end
