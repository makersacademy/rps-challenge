require 'player'
describe Player do
  subject(:masha) { described_class.new "Masha" }

  it 'returns a name' do
    expect(masha.name).to eq("Masha")
  end
end
