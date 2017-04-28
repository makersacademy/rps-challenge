require 'player'

describe Player do
  subject(:player) { described_class.new("John") }
  let(:weapon) { double :weapon }

  it 'has a name' do
    expect(player).to respond_to(:name)
  end

  it 'can have a weapon' do
    expect(player).to respond_to(:weapon)
  end

  it 'can change its weapon' do
    player.weapon = :weapon
    expect(player.weapon).to eq(:weapon)
  end

end
