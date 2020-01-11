require 'player'

 describe Player do

   let(:player_1) { described_class.new("Emily") }
   let(:lucy_the_computer) { described_class.new("LucyTheComputer") }

   describe '#initialize' do
     it 'returns the players name' do
       expect(player_1.name).to eq "Emily"
     end
   end

   describe '#random_selection' do
     it 'lucy_the_computer makes a random selection' do
       allow(lucy_the_computer).to receive(:random_selection).and_return('Paper')
       expect(lucy_the_computer.random_selection).to eq 'Paper'
     end
   end
 end