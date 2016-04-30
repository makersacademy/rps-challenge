require 'player'

describe 'Player' do
  subject(:player) { Player.new("Sergio")}

  context '#name' do
    it('returns the name') do
      expect(player.name).to eq "Sergio"
    end
  end

  context '#choice' do
    it('sets the choice to rock') do
      expect(player.choice(:rock)).to eq(:rock)
    end
  end
end