require 'player'
describe Player do
  name = "Ant"
  subject(:player) { described_class.new(name) }

  it 'gets created with a name' do
    expect(player.name).to equal name

  end

  it 'selects a weapon' do
    weapon = :scissors
    player.choose_weapon(weapon)
    expect(player.weapon).to equal weapon
  end
end
