require 'player'

describe Player do
  let(:player) { described_class.new("Arfah") }

  it 'can have a name' do
    expect(player.name).to eq "Arfah"
  end

end
