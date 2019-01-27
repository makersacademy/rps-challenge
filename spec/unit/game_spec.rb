require './models/game'

RSpec.describe Game do

  it 'provides a rock, paper or scissors as the computer weapon' do
    expect(Game.computer_weapon).to eq("rock") | eq("paper") | eq("scissors")
  end

  it 'returns a draw when there is a match' do
    expect(Game.result("rock", "rock")).to eq "Draw!"
    expect(Game.result("scissors", "scissors")).to eq "Draw!"
    expect(Game.result("paper", "paper")).to eq "Draw!"
  end

  it 'returns a compouter win when computer wins' do
    expect(Game.result("scissors", "rock")).to eq "Computer wins!"
    expect(Game.result("paper", "scissors")).to eq "Computer wins!"
    expect(Game.result("rock", "paper")).to eq "Computer wins!"
  end
end
