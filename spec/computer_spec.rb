require 'computer'

describe Computer do
  
    describe '#computer_pick' do
      it 'returns Rock, Paper or Scissors' do
        expect(subject.computer_pick).to eq('Rock').or eq('Paper').or eq('Scissors')
      end
    end
end
  