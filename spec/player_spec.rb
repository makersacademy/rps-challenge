require './lib/player.rb'

describe Player do
  let(:player) { Player.new("Player1") }

  context '#name' do
    it 'gets the player\'s name' do
      expect(player.name).to eq("Player1")
    end
  end

  context '#play' do
    it 'gets the player\'s choice' do
      player.choice('rock')
      expect(player.player_choice).to eq("rock")
    end
  end
end
