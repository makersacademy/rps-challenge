require './lib/rps'

describe RPS do
  subject(:rps) { described_class.new }
  let(:rules) { RPS::RULES }

  describe '#combinations' do
    it 'returns winning combinations' do
      expect(rps.combinations).to eq rules
    end
  end

  context 'Tests using stub' do

    describe '#pair_weapons' do
      let(:pair) { { :user => :rock, :computer => :scissors } }

      it 'pairs user weapon with random computer generated weapon' do
        rps.stub(:random_computer_weapon) { :scissors }
        expect(rps.pair_weapons).to eq pair
      end
    end

  end

end
