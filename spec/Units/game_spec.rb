require 'game'

describe Game do
  context 'Player 1 wins' do
  it 'expects Paper to beat Rock and player 2 wins' do
    this = Game.new("Paper", "Rock")
    expect(this.result).to eq("Player 1 wins")
  end

  it 'expects Scissors to beat Paper and Player 2 wins' do
    this = Game.new("Scissors", "Paper")
    expect(this.result).to eq("Player 1 wins")
  end

  it 'expects Rock to beat Scissors and Player 2 wins' do
    this = Game.new("Rock", "Scissors")
    expect(this.result).to eq("Player 1 wins")
  end
  end

  context 'Player 2 wins' do
  it 'expects Paper to beat Rock and player 2 wins' do
    this = Game.new("Rock", "Paper")
    expect(this.result).to eq("Player 2 wins")
  end

  it 'expects Scissors to beat Paper and Player 2 wins' do
    this = Game.new("Paper", "Scissors")
    expect(this.result).to eq("Player 2 wins")
  end

  it 'expects Rock to beat Scissors and Player 2 wins' do
    this = Game.new("Scissors", "Rock")
    expect(this.result).to eq("Player 2 wins")
  end
  end

  context 'draw' do
  it 'expects Paper to beat Rock and player 2 wins' do
    this = Game.new("Rock", "Rock")
    expect(this.result).to eq("Draw")
  end

  it 'expects Scissors to beat Paper and Player 2 wins' do
    this = Game.new("Paper", "Paper")
    expect(this.result).to eq("Draw")
  end

  it 'expects Rock to beat Scissors and Player 2 wins' do
    this = Game.new("Scissors", "Scissors")
    expect(this.result).to eq("Draw")
  end
  end
end
