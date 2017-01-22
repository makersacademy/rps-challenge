require 'player'

describe Player do
  subject(:player){described_class.new(name)}
  let(:name) {double :name}
  it 'should intitialize with a name' do
    expect(player.name).to eq name
  end
end
