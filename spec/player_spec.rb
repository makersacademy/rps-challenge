require_relative '../lib/player'

describe Player do
  subject(:player) { described_class.new("Duncan") }
  let(:duncan) { double "Duncan" }


  describe '#initialize' do
    it 'gives player a name' do
      expect(player.name).to eq "Duncan"
    end
  end
end
