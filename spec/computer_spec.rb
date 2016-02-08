
require './lib/computer'

describe Computer do

  let(:player) {double(:player, :name => 'Player1')}
  subject(:computer) {described_class.new}

  context 'to enable playing a game' do
    describe '#choose_option' do

      before do
        allow(computer).to receive(:choose_option).and_return('scissors')
      end
      it 'selects a option' do
        expect(computer.choose_option).to eq 'scissors'
      end
    end
  end
end
