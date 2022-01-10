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

  it 'provides the result when the computer wins' do
    allow(game).to receive(:selection).with('Rock')
    allow(game).to receive(:computer_selection).with('Paper')
    expect(game.result).to eq 'Computer Wins!!!'
  end

  it 'provides the result when the player wins' do
    allow(game).to receive(:selection).with('Scissors')
    allow(game).to receive(:computer_selection).with('Paper')
    expect(game.result).to eq 'Player Wins!!!'
  end

  it 'provides the result when there is a tie' do
    allow(game).to receive(:selection).with('Paper')
    allow(game).to receive(:computer_selection).with('Paper')
    expect(game.result).to eq 'It is a tie!'
  end
end