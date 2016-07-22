require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player_1) }
  let(:player_1) { double(:player_2) }

  # describe '#player' do
  #   it 'contains a player' do
  #     expect(game.player).to eq(player_1)
  #   end
  # end
end
