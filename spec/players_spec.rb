require 'player'

describe Player do
  let(:player) { Player.new('Patos') }

  context '#initialize' do
    it 'holds players name in an instance variable' do
      expect(player.name).to eq 'Patos'
    end
  end

  context '#move' do
    it 'assigns move to instance variable and returns it' do
      player.move("ROCK")

      expect(player.move).to eq "ROCK"
    end
  end
end
