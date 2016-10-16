require 'computer'

 describe Computer do

   subject(:computer) { described_class.new }

   describe '#comp_choice' do
     it 'selects choice from array' do
       expect(Computer::CHOICES).to include(computer.comp_choice)
     end
   end
 end
