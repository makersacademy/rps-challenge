require 'computer_player.rb'

describe ComputerPlayer do

  describe '#random_counter_move' do
    it 'returns a random rock, paper, scissors move' do
      computer_player = ComputerPlayer.new
      expect(%w[Rock Paper Scissors]).to include(computer_player.random_counter_move)
    end
  end
end
