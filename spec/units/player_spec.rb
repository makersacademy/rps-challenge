require './lib/player.rb'

describe Player do
  subject(:sam) { Player.new("Sam") }

  describe '#name' do
    it 'should return the name' do
      expect(sam.name).to eq("Sam")
    end
  end

  describe '#make_move' do
    it 'should set the player move' do
      expect { sam.make_move("Rock") }.to change { sam.move }.to("Rock")
    end
  end
end
