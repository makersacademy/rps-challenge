require 'game'
require 'player'

describe 'Game and Player' do

  let(:player_1) { Player.new "Josie" }
  let(:player_2) { Player.new "Computer" }
  let(:game) { Game.new player_1, player_2 }

  it 'will update player 1 score by 1' do
    player_1.selected '👊🏼'
    player_2.selected '✌🏼'
    expect { game.calculate_result }.to change { player_1.score }.by 1
    expect { game.calculate_result }.to change { player_2.score }.by 0

  end
  it 'will not update either' do
    player_1.selected '👊🏼'
    player_2.selected '👊🏼'
    expect { game.calculate_result }.to change { player_1.score }.by 0
    expect { game.calculate_result }.to change { player_2.score }.by 0
  end

end
