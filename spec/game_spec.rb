require 'game'

describe Game do

  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, select_weapon: :rock }
  let(:player_2) { double :computer, select_weapon: :paper }


  xit 'knows if a player has won' do
    game.play
    expect(game.winner).to eq player_2
  end

  xit 'knows it a player has lost' do
    game.play
    expect(game.loser).to eq player_2
  end

end
