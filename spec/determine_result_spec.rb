require 'determine_result'

describe DetermineResult do
  let(:determine_result) { described_class.new }
  let(:computer_move) { double :computer_move }

  describe 'should determine the winner correctly' do
    context 'player_move = rock' do
      before do
        player_move = "Rock"
      end
      it 'should determine player wins if computer selects scissors' do
        computer_move = "scissors"
        winner = determine_result(player_move, computer_move)
        expect(determine_result.result).to eq player_move
      end

      it 'should determine computer the winnder if computer selects paper' do
        computer_move = "paper"
        winner = determine_result(player_move, computer_move)
        expect(determine_result.result).to eq computer_move 
      end
    end
  end
end
