require 'player'

describe Player do 
  let(:name) { 'Bob' }
  subject(:player) { described_class.new(name) }

  context '#initialization' do
    it 'has a name' do
      expect(player.name).to eq name
    end

    it { is_expected.to respond_to(:shape) }
  end
end