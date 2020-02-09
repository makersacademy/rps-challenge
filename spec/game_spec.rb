require 'game'

describe Game do
  subject(:game) { described_class.new("Foobar") }

  describe '#player_name' do
    it 'should return the player name' do
      expect(game.player_name).to eq "Foobar"
    end
  end
  
  describe '#choose(move)' do
    it 'should set the player move' do
      expect(game).to respond_to(:choose).with(1).argument
    end
  end

  describe '#player_move' do
    it 'should default to rock' do
      expect(game.player_move).to eq("rock")
    end
    it 'should return the player move' do
      game.choose("scissors")
      expect(game.player_move).to eq("scissors")
    end
  end

  describe '#computer_move' do
    it 'should return a random move' do
      allow(game).to receive(:rand).and_return(1)
      expect(game.computer_move).to eq("paper")
    end
  end

  describe '#print_winner' do
    it 'should return who wins' do
      game.choose("scissors")
      allow(game).to receive(:rand).and_return(1)
      expect(game.print_winner).to eq "Computer wins!"
    end
  end
end
