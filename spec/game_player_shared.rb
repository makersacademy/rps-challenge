require 'game_player'
require 'computer'

shared_examples_for 'a game player' do
  let(:name) { 'Gon Freecs' }
  let(:game_player) do
    player_setup = {
      name: name, weapon_class: weapon_class, game_class: game_class
    }
    described_class.new(player_setup)
  end
  let(:weapon_class) { double :weapon_class, new: weapon }
  let(:weapon) { double :weapon, beats?: true }
  let(:weapon_name) { :rock }
  let(:other_weapon) { double :weapon }
  let(:game_class) { double :game_class, weapons: [:rock] }

  describe '#name' do
    it 'returns its name' do
      expect(game_player.name).to eq name
    end
  end

  describe '#to_s' do
    before do
      allow(game_player).to receive(:weapon).and_return weapon_name
    end
    it 'returns the name as a string' do
      expect(game_player.to_s).to eq name
    end
  end

  describe '#winner?' do
    before do
      allow(game_player).to receive(:weapon).and_return weapon
    end
    it 'returns true of the player beat the other player' do
      expect(game_player.winner?(other_weapon)).to eq true
    end
  end
end
