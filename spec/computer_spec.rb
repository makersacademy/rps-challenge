require './lib/computer'

describe Computer do

  let(:player) {double(:player, :name => 'Chuka')}
  subject(:computer) {described_class.new}

  context 'to enable playing a game' do
    describe '#choose_weapon' do

      before do
        allow(computer).to receive(:choose_weapon).and_return('scissors')
      end
      it 'should select a weapon' do
        expect(computer.choose_weapon).to eq 'scissors'
      end
    end
  end
end
