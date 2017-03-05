require 'game'

describe Game do
  let(:player_1) {double(:player_1)}
  let(:player_2) {double(:player_2)}

  before(:all) do
    srand(67809)
  end

  subject(:game) {described_class.new(player_1, player_2)}

   it 'has an array of players containing both players' do
    # expect(game.players).to include(player_1)
    # expect(game.players).to include(player_2)
   end


end
