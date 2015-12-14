require 'player'

describe Player do

  subject(:player) {described_class.new('Andrew')}

  it 'return player' do
    expect(player.name).to eq 'Andrew'
  end


end
