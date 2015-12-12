require 'game'


describe Game do
  subject(:game) {described_class.new}

  describe '#player_name' do
    it "Displays player's name" do
      expect(game.player_name_1).to eq :name_1
    end
  end
end
