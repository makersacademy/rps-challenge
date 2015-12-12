require 'game'


describe Game do
  subject(:game) {described_class.new}

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
  end
  describe '#player_name' do
    it "Displays player's name" do
      expect(game.player_name_1).to eq :name_1
    end
  end

  describe '#random_option' do
    it 'Displays option selected' do
      expect(game.random_option).to eq :rock
    end
  end


end
