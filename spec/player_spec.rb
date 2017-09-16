require 'player.rb'

describe Player do
  subject(:player) { described_class.new 'Example Player', 100 }
  # let(:player_1) { double :player }
  # let(:player_2) { double :player }

  describe '#instantiation' do
    it 'has name and points' do
      new_player = Player.new('Rory', 100)
      expect(new_player.name).to eq('Rory')
      expect(new_player.points).to eq(100)
    end
  end

  describe 'storage and selection for play' do

    it 'passes name and points to store' do
      location = double('player_store')
      allow(location).to receive(:store).with(player) { [player] }
      expect(player.player_store location).to eq([player])
    end

    it 'can be selected' do
      game = double('game')
      fake_weapon = double('weapon')
      allow(game).to receive(:store).with(player, fake_weapon) { [{ player => fake_weapon }] }
      expect(player.take_a_turn game, fake_weapon).to eq [player => fake_weapon]
    end

  end

end
