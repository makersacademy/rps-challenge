require 'game'

describe Game do
  let(:player_1) { double :player, weapon_choice: :rock }
  let(:player_2) { double :computer, weapon_choice: :scissors }

  subject(:game) { described_class.new(player_1, player_2) }

  it 'returns the name of the participating players' do
    expect(game.players).to include player_1
  end

  describe '#result' do
    it 'calculates the result of the game' do
      expect(game.result).to eq true
    end
  end
end
