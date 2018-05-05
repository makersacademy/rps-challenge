require 'player'

describe Player do
  let(:player) {described_class.new("John")}
  it 'name should equal John' do
    expect(player.name).to eq("John")
  end
end
