require './lib/game'

describe Game do
  let(:fake_name_1) { 'player_1' }
  let(:fake_name_2) { 'player_2' }
  let(:player_1) { double(:player_1, :name => fake_name_1) }
  let(:player_2) { double(:player_2, :name => fake_name_2) }

  subject(:game) { Game.create(player_1, player_2) }

  describe 'returns player names' do
    it 'returns player 1 name' do
      expect(game.player_1.name).to eq(player_1.name)
    end
    it 'returns player 2 name' do
      expect(game.player_2.name).to eq(player_2.name)
    end
  end
end
