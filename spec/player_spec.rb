require 'player'

describe Player do

  subject(:player) { described_class.new("Kat", :rock) }

  it 'should have a name and a choice' do
    expect(player).to have_attributes(name: "Kat", choice: :rock)
  end

end
