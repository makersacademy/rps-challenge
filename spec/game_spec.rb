require 'game'

describe Game do
  subject(:game) { described_class.new(parameters) }
  let(:parameters) { {"player_1_name" => "Trump", "player_1_choice" => :paper, "player_2_choice" => :rock} }

  describe '#player_1_name' do
    it 'allows to return the player_1 name' do
      expect(game.player_1_name).to eq "Trump"
    end
  end

  describe '#player_1_choice' do
    it 'allows to return the player_1 choice' do
      expect(game.player_1_choice).to eq :paper
    end
  end

  describe '#player_2_choice' do
    it 'allows to return the player_2 choice' do
      expect(game.player_2_choice).to eq :rock
    end
  end

end
