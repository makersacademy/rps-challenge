require 'game'

describe ComputerGame do

  it 'gives a random choice of rock, paper, scissor' do
    choices = ['rock', 'paper', 'scissor']
    game = ComputerGame.new
    game.choice
    expect(choices).to include(game.choice)
  end

end