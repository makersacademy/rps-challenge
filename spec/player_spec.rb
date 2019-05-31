require './lib/player.rb'

describe Player do
  let(:player) { Player.new("Player1") }

  context '#name' do
    it 'gets the player\'s name' do
      expect(player.name).to eq("Player1")
    end
  end
end
