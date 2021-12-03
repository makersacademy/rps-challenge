require 'player'

describe Player do
  let(:player) { Player.new('Jess') }

  context '#initialize' do
    it 'holds players name in an instance variable' do
      expect(player.name).to eq 'Jess'
    end
  end
end