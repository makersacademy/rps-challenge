require 'player'

 describe Player do

   let(:player_1) { described_class.new("Emily") }
   let(:player_2) { described_class.new("Lucy") }

   describe '#initialize' do
     it 'returns the players name' do
       expect(player_1.name).to eq "Emily"
     end
   end
 end