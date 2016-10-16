require 'computer'

 describe Computer do

   subject(:computer) { described_class.new }

   describe '#comp_choice' do
     it 'selects choice from array' do
       allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
       expect(Computer::CHOICES).to include(computer.comp_choice)
     end
   end
 end
