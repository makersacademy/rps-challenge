require 'player'

describe Player do

  let(:player_1) { described_class.new('Tom') }
  let(:player_2) { described_class.new('Jerry') }

    it 'is expected to show a name' do
      expect(player_1.name).to eq('Tom')
    end
end