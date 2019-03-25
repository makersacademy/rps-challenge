# require 'turn'
#
# describe Turn do
#
#   describe '#game' do
#     it 'returns winner' do
#       turn = Turn.new
#       expect(turn.game('Rock', 'Scissors')).to eq 'You win!'
#     end
#   end
# end

require 'turn'

describe Turn do
  turn = Turn.new

  describe '#game' do
    it 'returns winner' do
      expect(turn.game('Rock', 'Scissors')).to eq 'You win!'
    end
  end
end
