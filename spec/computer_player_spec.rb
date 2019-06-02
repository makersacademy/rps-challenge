require 'computer_player'

describe 'ComputerPlayer' do

  let(:computer_player) { ComputerPlayer.new }
  
  describe '#name' do
    it "has a default name'" do
      expect(computer_player.name).to eq(ComputerPlayer::DEFAULT_NAME)
    end
  end

  describe '#move' do
    let(:valid_moves) { [:rock, :paper, :scissors] }

    it "returns one of the expected symbols each time when run multiple times" do
      50.times do 
        expect(computer_player.move).to satisfy { |value| valid_moves.include?(value) }
      end
    end

    it "returns the same move each time when seed fixed with srand" do
      srand(12345)
      expect(computer_player.move).to eq(:scissors)
    end
  end

  describe '#last_move' do
    it 'returns the last move when fixed with srand' do
      srand(12345)
      computer_player.move
      expect(computer_player.last_move).to eq(:scissors)
    end
  end
end