require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:weapon) { :rock }

  context '#player_select' do
    it 'allows player to select weapon' do
      game.player_select(weapon)
      expect(game.player_select).to eq :rock
    end
  end

  context '#computer_select' do
    it 'allows computer to select weapon' do
      expect(game.computer_select).to eq weapon
    end
  end
end
