require './models/player.rb'

describe Player do
  let(:player) { Player.new("foo") }

  describe '#name' do

    it 'should give the players name' do
      expect(player.name).to eq("foo")
    end
  end

  describe '#move' do

    it 'should store this in players move' do
      player.select_move("Paper")
      expect(player.move).to eq("Paper")
    end
  end
end
