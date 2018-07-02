require './lib/player.rb'

describe Player do

  describe '#initialize' do
    it 'sets player name on instantiation' do
      player = Player.new(:alan)
      expect(player.name).to eq :alan
    end
  end

  describe '#random_selection' do
    it 'randomly allocates Rock, Paper or Scissors to Player 2' do
      computer = Player.new(:computer)
      computer.random_selection
      expect(['Rock', 'Paper', 'Scissors']).to include computer.selection
    end
  end
end
