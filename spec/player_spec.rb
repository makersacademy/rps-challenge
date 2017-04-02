require 'player'

describe Player do
  subject(:player) {described_class.new(john)}
  let(:john) {'John'}

  describe '#name' do
    it 'Returns player name' do
      expect(player.name).to eq john
    end
  end
end
