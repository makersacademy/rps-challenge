require 'player'
describe Player do
  name = "Ant"
  subject(:player) { described_class.new(name) }

  it 'gets created with a name' do
    expect(player.name).to equal name

  end
end
