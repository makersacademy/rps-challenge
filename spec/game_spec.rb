require 'game'

describe Game do
  describe '#status' do
    it 'returns current initial status' do
      expect(subject.status).to eq 0
    end
  end

# # need to fix these tests
#   describe '#opponent' do
#     subject(:spock) { Game.new }
#     it 'returns opponent\'s choice' do
#       allow(spock.opponent).to receive(:sample).and_return("Rock")
#       expect(spock.opponent).to eq "Rock"
#     end
#   end
  #
#   describe '#win_calculator' do
#       it 'changes the win status' do
#         spock = Game.new("Rock")
#         allow(spock.opponent).to receive(:sample).and_return("Scissors")
#         p spock
#         spock.win_calculator
#         expect(spock.status).to eq 1
#       end
#   end
end
