require 'computer_player'

describe 'ComputerPlayer' do

  let(:computer_player) { ComputerPlayer.new }
  
  describe '#name' do
    it "has a default name'" do
      expect(computer_player.name).to eq(ComputerPlayer::DEFAULT_NAME)
    end
  end

  describe '#get_move' do
    let(:valid_moves) { [:rock, :paper, :scissors] }

    it "returns one of the expected symbols each time when run multiple times" do
      50.times do 
        expect(computer_player.get_move).to satisfy { |value| valid_moves.include?(value) }
      end
    end

    it "returns the same move each time when seed fixed with srand" do
      srand(12345)
      expect(computer_player.get_move).to eq(:scissors)
    end
  end
end