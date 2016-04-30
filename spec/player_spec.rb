require 'player'

describe Player do

  subject(:player) {described_class.new("Sity")}

  it 'created with a name' do
    expect(player.name).to eq "Sity"
  end

end
