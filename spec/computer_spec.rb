require 'computer'
describe Computer do

    it 'should be able to move' do
        expect(subject).to respond_to(:movements)
    end

    describe '#select_move' do
        it 'should return Rock, Paper or Scissors' do
            expect(subject.select_move).to eq('Rock').or eq('Paper').or eq('Scissors')
        end
    end

end