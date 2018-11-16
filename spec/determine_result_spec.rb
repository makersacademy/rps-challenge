require 'determine_result'

describe DetermineResult do
  let(:computer_player) { double :computer_player }

  describe 'should determine the winner correctly' do
    context 'player_move = rock' do
      it 'should determine player wins if computer selects scissors' do
        player_move = "Rock"
        allow(computer_player).to receive(:move).and_return("scissors")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "player"
      end

      it 'should determine the computer the winner if computer selects paper' do
        player_move = "Rock"
        allow(computer_player).to receive(:move).and_return("paper")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "computer"
      end

      it 'should determine a draw if computer selects rock' do
        player_move = "Rock"
        allow(computer_player).to receive(:move).and_return("rock")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "draw"
      end
    end

    context 'player_move = paper' do
      it 'should determine player wins if computer selects rock' do
        player_move = "Paper"
        allow(computer_player).to receive(:move).and_return("rock")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "player"
      end

      it 'should determine the computer the winner if computer selects scissors' do
        player_move = "Paper"
        allow(computer_player).to receive(:move).and_return("scissors")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "computer"
      end

      it 'should determine a draw if computer selects paper' do
        player_move = "Paper"
        allow(computer_player).to receive(:move).and_return("paper")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "draw"
      end
    end

    context 'player_move = scissors' do
      it 'should determine player wins if computer selects paper' do
        player_move = "Scissors"
        allow(computer_player).to receive(:move).and_return("paper")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "player"
      end

      it 'should determine the computer the winner if computer selects rock' do
        player_move = "Scissors"
        allow(computer_player).to receive(:move).and_return("rock")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "computer"
      end

      it 'should determine a draw if computer selects scissors' do
        player_move = "Scissors"
        allow(computer_player).to receive(:move).and_return("scissors")
        determine_result = DetermineResult.new(player_move, computer_player)
        expect(determine_result.winner).to eq "draw"
      end
    end
  end
end
