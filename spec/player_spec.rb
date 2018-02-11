require 'player'

describe Player do

  subject(:player) { described_class.new('Hannah') }

  it 'stores player\'s name' do
    expect(player.name).to eq 'Hannah'
  end

  it 'stores a weapon which is defaulted to nil at instantiation' do
    expect(player.weapon).to eq nil
  end
end
