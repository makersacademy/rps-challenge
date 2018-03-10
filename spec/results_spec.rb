# require 'results'
#
# describe Results do
#
#   subject(:results) { described_class.new('Charlene', 'Bob', 'choice1', 'choice2') }
#   describe '#declare' do
#     it 'decalres the winner' do
#       choice1 = double('choice1')
#       choice2 = double('choice2')
#       expect(choice1).to receive(:turn).and_return('Paper')
#       expect(choice2).to receive(:turn).and_return('Scissors')
#       results.winner
#       expect(results.declare).to eq 'Bob won'
#     end
#   end
# end
