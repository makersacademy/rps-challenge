require './models/printer'

describe Printer do
  let(:player) { double(:player, name: "test") }

  describe '#winner' do

     it 'should print out the winner' do
       expect(subject.winner(player)).to eq "test wins"
     end
  end

end
