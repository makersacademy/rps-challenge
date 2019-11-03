require 'player'

describe Player do

  context 'creating a player' do
    subject(:player) { Player.new("Andy", "paper") }

    it 'should have a name' do
      expect(player.name).to eq("Andy")
    end

    it 'should have a weapon selection' do
      expect(player.selection).to eq("paper")
    end

  end   

end
