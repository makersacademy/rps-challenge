require 'game.rb'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:players) { [player_1, player_2] }
  let(:weapons) { ['rock', 'paper'] }
  subject(:game) { described_class.new players, weapons }

  describe '#instantiation' do
    it 'has players and weapons' do
      expect(game.players).to eq([player_1, player_2])
      expect(game.weapons).to eq(['rock', 'paper'])
    end
  end

end
