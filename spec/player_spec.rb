require 'player.rb'

describe Player do
subject(:player) { described_class.new(name) }
let(:name) { "Junot" }

  it 'has a name' do
    expect(player.name).to eq name
  end

end
