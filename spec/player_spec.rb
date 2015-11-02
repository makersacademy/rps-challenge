require 'player'

describe Player do
  subject(:player) { described_class.new ('Eleni') }

  it 'has a name' do
    expect(player.name).to eq 'Eleni'
  end

  it 'has a choice of weapons' do
    expect(player.choose_weapon(:rock)).to eq :rock
  end
end