require 'computer'

  describe 'computer' do
    subject(:computer) { Computer.new }

      it 'should return a computer choice' do
        expect(computer.choice).to eq("scissors").or eq("paper").or eq("rock")
    end
  end
