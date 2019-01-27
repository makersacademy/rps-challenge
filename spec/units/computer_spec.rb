require 'computer'


describe Computer do

    subject(:computer) {Computer.new}

    describe '#move' do
        it 'responds to move' do
            expect(computer).to respond_to(:move)
            computer.move
        end
    end
    describe "#initialize" do
        it 'automatically generates a viable move for the Computer' do
            allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
            expect{print computer.move}.to output('Rock').to_stdout
        end
    end
end
