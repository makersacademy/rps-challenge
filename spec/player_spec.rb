require 'player'

describe Player do
  let(:name) { 'Gon Freecs' }
  subject(:player) do
    player_setup = {
      name: name, weapon_class: weapon_class, game_class: game_class
    }
    described_class.new(player_setup)
  end
  let(:weapon_class) { double :weapon_class, new: weapon }
  let(:game_class) { double :game_class, weapons: [:rock] }
  let(:weapon) { double :weapon, beats?: true }
  let(:weapon_name) { :rock }
  let(:other_weapon) { double :weapon }

  describe '#select_weapon' do
    it 'gives the player a weapon' do
      expect(weapon_class).to receive :new
      player.select_weapon(weapon_name)
    end
    it 'raises error' do
      message = described_class::INVALID_WEAPON
      expect { player.select_weapon('chicken') }.to raise_error message
    end
  end

  context 'player has selected a weapon' do
    before do
      player.select_weapon(weapon_name)
    end
    describe '#weapon' do
      it 'returns the current weapon' do
        expect(player.weapon).to eq weapon
      end
    end
    it_behaves_like 'a game player'
  end
end
