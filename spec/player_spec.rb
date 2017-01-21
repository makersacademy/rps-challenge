require 'player'

describe Player do
  subject(:player) { described_class.new('Stefan') }
  let(:id) { player.object_id }

  it 'initialises with a name' do
    expect(player.name).to eq('Stefan')
  end

  it "and receives 'add' class method" do
    expect(described_class).to receive(:add)
    described_class.add(id, player)
  end

  it "and 'players' class instance variable holds initialised instance" do
    described_class.add(id, player)
    expect(described_class.players).to have_key(id)
  end

  it "and class method 'find' locates player object by id" do
    described_class.add(id, player)
    expect(described_class.find(id)).to eq player
  end
end
