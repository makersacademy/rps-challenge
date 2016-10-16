require 'player'

describe Player do
  subject(:player) {descibed_class.new}
  player_1 = Player.new("Chet")

  describe '#initialize' do

    it 'stores a name' do
      expect(player_1.name).to eq("Chet")
    end
  end
end
