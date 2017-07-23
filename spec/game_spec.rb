require 'game'

describe Game do
  subject(:game) { described_class.new(player_1) }
  let(:player_1) { double :player }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#random_weapon' do
    it 'returns a random weapon' do
      expect(game.random_weapon).to eq "rock" # need a random_weapon method to stub random results
    end
  end

  describe '#player_weapons' do
    it 'returns player_1 weapons' do
      expect(subject.player_weapons(:weapons)).to eq :weapons
    end
  end
end
