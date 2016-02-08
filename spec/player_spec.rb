require 'player'

describe Player do
  subject(:player) { described_class.new ('Michael') }

  describe 'initialize' do
    it 'creates a new player with the name passed' do
      expect(player.name).to eq 'Michael'
    end
  end

  describe '#move_choice' do
    it 'stores the players move' do
      player.move_choice("ROCK")
      expect(player.move).to eq "ROCK"
    end
  end
end
