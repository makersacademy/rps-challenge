require 'computer'
require 'game_player'
require_relative './game_player_shared.rb'

describe Computer do
  let(:name) { 'Gon Freecs' }
  subject(:computer) do
    player_setup = {
      name: name, weapon_class: weapon_class, game_class: game_class
    }
    described_class.new(player_setup)
  end
  let(:weapon_class) { double :weapon_class, new: weapon }
  let(:weapon) { double :weapon, beats?: true }
  let(:weapon_name) { :rock }
  let(:other_weapon) { double :weapon }
  let(:game_class) { double :game_class, weapons: [weapon] }

  describe '#select_weapon' do
    it 'gives the player a weapon' do
      expect(weapon_class).to receive :new
      computer.select_weapon
    end
  end

  context 'player has selected a weapon' do
    before do
      computer.select_weapon
    end
    describe '#weapon' do
      it 'returns the current weapon' do
        expect(computer.weapon).to eq weapon
      end
    end
    it_behaves_like 'a game player'
  end
end
