require './lib/rps'

describe RPS do
  subject(:rps) { described_class.new }

  describe '#winning_combinations' do
    it 'contains winning combos' do
      expect(rps.combos).to eq RPS::COMBINATIONS
    end
  end

  context 'Tests random weapon sampling using stub' do

    describe '#pair_weapons' do
      let(:pair) { { :rock => :scissors } }

      it 'pairs user weapon with random comupter generated weapon' do
        rps.stub(:computer_weapon) { :scissors }
        expect(rps.pair_weapons).to eq pair
      end
    end

  end

end
