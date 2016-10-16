require 'player'

describe Player do
  subject(:player) {described_class.new("Dionysis")}

  describe '#initialize' do

    it 'stores name as an attribute' do
      expect(player.name).to eq("Dionysis")
    end

    it 'has not selected a choice when initialised' do
      expect(player.player_choice).to be nil
    end
  end

end
