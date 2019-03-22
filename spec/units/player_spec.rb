require 'player'
describe Player do
  subject(:masha) { described_class.new "Masha" }
  let(:choice) { double :choice }
  it 'returns a name' do
    expect(masha.name).to eq("Masha")
  end

  it 'stores a move' do
    expect(masha.move(choice)).to eq choice
  end
end
