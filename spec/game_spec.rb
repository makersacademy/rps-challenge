require 'game'

describe Game do
  subject(:game) { Game.new('player') }
  let(:selection_player) { 'Rock' }

  it 'the game can return the players name' do
    expect(game.player).to eq 'player'
  end

  it 'the computer will have a random pick' do
    expect(['Rock','Paper','Scissors']).to include(game.computer)
  end

  it 'receives the players selection' do
    game.player_selection(selection_player)
    expect(game.selection).to eq 'Rock'
    
  end

end