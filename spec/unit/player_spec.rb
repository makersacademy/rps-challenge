require_relative '../../lib/player'

describe Player do
  subject(:player) { described_class.new("Constantine") }

  it 'creates a Player instance' do
    expect(player).to be_instance_of(described_class)
  end

  context "#initialize" do
    it "creates a name instance variable by entering an argument"do
      expect(player.name).to eq("Constantine")
    end
  end
end