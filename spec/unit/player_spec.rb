require 'player'

 describe Player do

   let(:player_1) { described_class.new("Emily") }
 

   describe '#initialize' do
     it 'returns the players name' do
       expect(player_1.name).to eq "Emily"
     end
   end

   #logic for randomizing computer - responsibility of computer    Game class 

   
  end