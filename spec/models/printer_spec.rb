require './models/printer'

describe Printer do
  let(:player) { double(:player, name: "test") }

  describe '#winner' do

     it 'should print out the winner' do
       expect(subject.winner(player)).to eq "test wins"
     end
  end

  describe '#draw' do

     it 'should print out message if a draw' do
       expect(subject.draw).to eq "It is a draw"
     end
  end

end
