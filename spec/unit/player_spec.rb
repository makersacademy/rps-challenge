require 'player'

describe Player do
  let(:player) { Player.new("name") }

  describe 'initialize' do
    it 'has a name' do
      expect(player).to respond_to(:name)
    end

    it 'has a choice that can be set' do
      player.choice = "scissors"
      expect(player.choice).to eq("scissors")
    end
  end
end
