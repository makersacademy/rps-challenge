require 'player'

describe Player do
  subject(:player) {described_class.new}
  player_1 = Player.new("Dionysis")

  describe '#initialize' do

    it 'stores name as an attribute' do
      expect(player_1.name).to eq("Dionysis")
    end
  end

end
