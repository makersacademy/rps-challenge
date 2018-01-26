require 'game'

describe Game do
  subject(:game) { described_class.new(type) }
  let(:type) { { "player_name" => "Anjana", "player_weapon" => :rock, "computer_weapon" => :rock} }

  describe '#player_name' do
    it 'returns the name of the player' do
      expect(game.player_name).to eq 'Anjana'
    end
  end

  describe '#player_weapon' do
    it 'returns the chosen weapon of the player' do
      expect(game.player_weapon).to eq :rock
    end
  end

  describe '#computer_weapon' do
    it 'returns the chosen weapon of the computer' do
      expect(game.computer_weapon).to eq :rock
    end
  end

end
