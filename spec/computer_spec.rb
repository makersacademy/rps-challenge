require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

 describe '#initialize' do
   it 'should have the choice set to nil' do
     expect(computer.move_choice).to be nil
   end
 end

 describe '#computer_select' do
   it 'selects a random choice for the computer' do
   allow(computer).to receive(:random_selector).and_return(:rock)
   computer.computer_select
   expect(computer.move_choice).to eq :rock
  end
 end

end
