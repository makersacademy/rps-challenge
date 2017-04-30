require 'player'

describe Player do
let(:player) { described_class.new('Sulaiman') }
  describe '::new' do
    it 'has a name' do
      expect(player.name).to eq 'Sulaiman'
    end
  end
end
