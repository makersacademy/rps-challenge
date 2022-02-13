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
    allow(game).to receive(:rand).and_return(1)
    game.computer
    game.player_selection('Rock')
    expect(game.result).to eq 'Result: Computer Wins!!!'
  end
  

  it 'provides the result when the player wins' do
    allow(game).to receive(:rand).and_return(1)
    game.computer
    game.player_selection('Scissors')
    expect(game.result).to eq 'Result: Player Wins!!!'
  end

  it 'provides the result when there is a tie' do
    allow(game).to receive(:rand).and_return(1)
    game.computer
    game.player_selection('Paper')
    expect(game.result).to eq 'Result: It is a tie!'
  end
end