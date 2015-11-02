require './lib/game'

describe Computer do

  subject(:computer) {described_class.new}

    describe '#choose weapon' do
      it 'allows the computer to choose a weapon' do
        allow_any_instance_of(Array).to receive(:sample).and_return("paper")
        expect(computer.choose).to eq "paper"
      end

    end

end
