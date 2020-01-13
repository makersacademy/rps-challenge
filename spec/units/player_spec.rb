require 'player'

describe Player do

  subject(:daisy) {Player.new('Daisy')}

  describe '#name' do
    it "returns the player's name" do
      expect(daisy.name).to eq "Daisy"
    end
  end

  describe 'results' do
    it 'evaluates results and returns who won' do
      player_move = double('Scissors')
      computer_move = double('Paper')
      expect(daisy.compare_moves(player_move, computer_move)).to eq 'player'
    end
  end

end
