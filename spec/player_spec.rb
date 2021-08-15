require 'player'

describe Player do

  let(:player_1) { described_class.new('Tom') }
  let(:player_2) { described_class.new('Jerry') }

    it 'is expected to show a name' do
      expect(player_1.name).to eq('Tom')
    end

    describe '#choose()' do

      it 'is expected to return Rock' do
        expect(player_1.choose(0)).to eq(:Rock)
      end

      it 'is expected to return Rock' do
        expect(player_1.choose(1)).to eq(:Paper)
      end

      it 'is expected to return Rock' do
        expect(player_1.choose(2)).to eq(:Scissors)
      end

    end
end