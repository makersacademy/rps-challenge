require 'game'

describe Game do
describe 'Player vs comp' do
  let(:subject) {Game.new("Paper", "Scissors")}
  it 'expect computer selection to be rock' do
    expect(subject).to receive(:rand).and_return(2)
    expect(subject.comp_selection).to eq "Rock"
  end

end

  describe 'player vs player' do
  context '#result shows Player 1 wins' do
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

  context '#result shows Player 2 wins' do
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

  context '#result shows draw' do
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
end
