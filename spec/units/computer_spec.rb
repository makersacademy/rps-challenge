require 'computer'


describe Computer do

    subject(:computer) {Computer.new}

    describe '#move' do
        it 'responds to move' do
            expect(computer).to respond_to(:move)
            computer.move
        end
    end
end
