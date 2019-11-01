require 'game'

  describe 'Game' do
    subject(:computer) { Game.new }

      it 'should return a computer choice' do
        allow(Kernel).to receive(:rand).and_return(2)
        expect(computer.choice).to eq("scissors")
    end
  end
