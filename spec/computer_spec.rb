require 'computer'

 describe Computer do
   subject(:computer) { described_class.new }

 describe '#tool' do
   it 'picks a random tool' do
     expect(Computer::WEAPONS).to include computer.tool
   end
 end
 end
