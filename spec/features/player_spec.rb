require "player"

describe Player do
  subject(:player) { described_class.new }
  let(:name) { double("name of player") }

  context "#initialize" do
    it 'has a name' do
      expect(player[:name]).to eq name
    end
  end
end
