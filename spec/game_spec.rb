require './lib/game'

describe Game do
  subject(:game) { Game.new("Rock") }

  it 'allows a player to make a choice upon intiation' do
    expect(game.player_choice).to eq :Rock
  end

  it 'selects a random choice of rock, paper or scissors for the computer' do
    expect(game.random_choice).to eq(:Rock).or eq(:Paper).or eq(:Scissors)
  end

  it 'returns Draw if player and computer choose the same option' do
    allow(game).to receive(:computer_choice) { :Rock }
    expect(game.outcome).to eq "Draw"
  end

  it 'returns Player wins if player has a winning choice' do
    allow(game).to receive(:computer_choice) { :Scissors }
    expect(game.outcome).to eq "Player wins"
  end

  it 'returns Computer wins if computer has a winning choice' do
    allow(game).to receive(:computer_choice) { :Paper }
    expect(game.outcome).to eq "Computer wins"
  end
end
