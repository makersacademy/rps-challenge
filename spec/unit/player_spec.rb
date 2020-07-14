require 'player'

describe Player do
  let(:catriona) { Player.new('Catriona') }

  describe '#name' do
    it 'returns the name' do
      expect(catriona.name).to eq 'Catriona'
    end
  end
end
