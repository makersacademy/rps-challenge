require 'player'

describe Player do

  let(:player_1) { described_class.new("Player 1")}

  describe 'Creating a new player' do
    it 'Should have a name attribute' do
      expect(player_1.name).to eq "Player 1"
    end

    it 'Should have a score of 0 when initialized' do
      expect(player_1.score).to eq 0
    end
  end

  describe 'Making a move' do
    it 'Should able to change it\'s move attribute based on an argument passed to it' do
      player_1.make_move("Rock")
      expect(player_1.move).to eq "Rock"
    end
  end
end
