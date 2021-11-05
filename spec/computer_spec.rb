require 'computer'

describe Computer do 
   let(:computer) { Computer.new }

   it "shows the players name" do
      expect(computer.name).to eq 'Computer'
   end

  describe '#random_choice' do
   it 'should choose an option from the list' do
     allow(computer.random_choice).to receive(:sample) 
     expect(computer.random_choice).to eq("Rock").or eq("Paper").or eq("Scissors")
   end
  end
end 