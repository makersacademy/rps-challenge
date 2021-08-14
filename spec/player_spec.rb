require 'player'

describe Player do

  let(:player_1) { described_class.new('Tom') }

    it 'is expected to show a name' do
      expect(player_1.name).to eq('Tom')
    end
end