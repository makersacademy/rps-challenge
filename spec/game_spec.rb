require 'game'

describe Game do

  subject(:game) { described_class.new(player,computer) }
  let(:player) { double :player, select_weapon: :rock }
  let(:computer) { double :computer, select_weapon: :rock }

  subject(:win_game) { described_class.new(player_1, computer) }
  let(:player_1) { double :player, select_weapon: :paper }

  subject(:lose_game) { described_class.new(player_2, computer) }
  let(:player_2) { double :player, select_weapon: :scissors }

  it 'knows if there has been a draw' do
    expect(game.draw?).to be true
  end

  it 'knows which player has won' do
    win_game.play
    expect(win_game.winner).to eq player_1
  end

  it 'knows it a player has lost' do
    lose_game.play
    expect(lose_game.winner).to eq computer
  end

end
