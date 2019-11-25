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

  describe '#random_move' do
    it 'should update the player move to a random move' do
      srand(4)
      expect { sam.random_move }.to change { sam.move }.to("Scissors")
    end
  end
end
