require 'player'

describe Player do
subject(:player_one) { described_class.new("Dan") }
  it 'should be able to receive a name' do
    expect(player_one.name).to eq "Dan"
  end
  context 'no move specified' do
    it 'should randomise a move' do
      srand(500)
      random_move_player = Player.new("Dan")
      random_move_player.randomise_move
      expect(random_move_player.move).to eq :paper
    end
  end
  context 'move specified' do
    it 'should receive a move' do
      specific_move_player = Player.new("Dan", :rock)
      expect(specific_move_player.move).to eq :rock
    end
  end
end
