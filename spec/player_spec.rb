require 'player'

describe Player do

  subject(:player) { Player.new("Mama") }

  describe '#initialize' do
    it 'is initialized with a name' do
      expect(player.name).to eq('Mama')
    end
  end

  describe '#save_move' do
    it "saves the player's choice as an instance variable" do
      player.save_move('Rock')
      expect(player.move).to eq('Rock')
    end
    
    it 'raises and error if user move not a valid option' do
      expect { player.save_move('Fire') }.to raise_error('Not a valid choice')
    end
  end

end
