require 'player'

describe Player do

  subject(:player) { described_class.new("Kat") }

  it 'should have a name' do
    expect(player).to have_attributes(name: "Kat")
  end

end
