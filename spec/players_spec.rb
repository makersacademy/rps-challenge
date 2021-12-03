require 'player'

describe Player do
  let(:player) { Player.new('Patos') }

  context '#initialize' do
    it 'holds players name in an instance variable' do
      expect(player.name).to eq 'Patos'
    end
  end
end