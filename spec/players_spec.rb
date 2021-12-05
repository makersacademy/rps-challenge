require 'player'

describe Player do
  let(:player) { Player.new('Patos') }

  context '#initialize' do
    it 'holds players name in an instance variable' do
      expect(player.name).to eq 'Patos'
    end
  end

  context 'move' do
    it '#assign_move and #read_move' do
      player.assign_move("ROCK")

      expect(player.read_move).to eq "ROCK"
    end
  end
end
