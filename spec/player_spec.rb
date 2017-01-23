require 'player'

describe Player do
  let(:name) {double :name}
  subject(:player) { described_class.new(:name) }
  let(:weapon) {double :weapon}

  it 'records the name of the player' do
    expect(player.name).to eq :name
  end

  it 'allows player to have a weapon' do
    expect(player.choose_weapon(:weapon)).to eq :weapon
  end

end
