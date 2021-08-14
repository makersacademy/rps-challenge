require 'player'

describe Player do

  let(:player_1) { described_class.new('Tom') }
  let(:player_2) { described_class.new('Jerry') }

    it 'is expected to show a name' do
      expect(player_1.name).to eq('Tom')
    end

    describe '#r_p_s' do

      it 'is expected to return rock, paper or scissors' do
        expect(player_1.r_p_s).to eq("Rock").or eq("Paper").or eq("Scissors")
      end

    end
end