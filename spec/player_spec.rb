require 'player'

describe Player do
  let(:player) {described_class.new("David")}

  it 'has a name' do
    expect(player.name).to eq "David"
  end
end
