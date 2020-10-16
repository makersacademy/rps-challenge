require 'game'

describe Game do
  it 'expects Paper to beat Rock and player 2 wins' do
    this = Game.new("Rock", "Paper")
    expect(this.result).to eq("Player 2 wins")
  end

  it 'expects Scissors to beat Paper and player 2 wins' do
    this = Game.new("Paper", "Scissors")
    expect(this.result).to eq("Player 2 wins")
  end

end
