require_relative '../lib/player'

describe Player do

  subject(:player) { Player.new('Peter') }
  
  describe '#name' do
    it "Should return it's name" do
      expect(player.name).to eq 'Peter'
    end
  end

end
