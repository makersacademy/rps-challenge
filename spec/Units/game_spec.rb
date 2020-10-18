require_relative "../../lib/Game"
require_relative "../../lib/computer_selection"
describe Game do
  it 'expect computer selection to be rock therefore player 1 wins as paper beats rock' do
    comp = ComputerSelection.new
    allow(comp).to receive(:random_selection).and_return("Rock")
    newgame = Game.new("Paper", comp.random_selection, "Tom", "Harry")
    expect(newgame.result).to eq "Tom wins"
  end
end

describe Game do
  describe 'player vs player' do
    context '#result shows Player 1 wins' do
      it 'expects Paper to beat Rock and player 2 wins' do
        this = Game.new("Paper", "Rock", "Tom", "Harry")
        expect(this.result).to eq("Tom wins")
      end

      it 'expects Scissors to beat Paper and Player 2 wins' do
        this = Game.new("Scissors", "Paper", "Tom", "Harry")
        expect(this.result).to eq("Tom wins")
      end

      it 'expects Rock to beat Scissors and Player 2 wins' do
        this = Game.new("Rock", "Scissors", "Tom", "Harry")
        expect(this.result).to eq("Tom wins")
      end
    end

    context '#result shows Player 2 wins' do
      it 'expects Paper to beat Rock and player 2 wins' do
        this = Game.new("Rock", "Paper", "Tom", "Harry")
        expect(this.result).to eq("Harry wins")
      end

      it 'expects Scissors to beat Paper and Player 2 wins' do
        this = Game.new("Paper", "Scissors", "Tom", "Harry")
        expect(this.result).to eq("Harry wins")
      end

      it 'expects Rock to beat Scissors and Player 2 wins' do
        this = Game.new("Scissors", "Rock", "Tom", "Harry")
        expect(this.result).to eq("Harry wins")
      end
    end

    context '#result shows draw' do
      it 'expects Paper to beat Rock and player 2 wins' do
        this = Game.new("Rock", "Rock", "Tom", "Harry")
        expect(this.result).to eq("It is a Draw!")
      end

      it 'expects Scissors to beat Paper and Player 2 wins' do
        this = Game.new("Paper", "Paper", "Tom", "Harry")
        expect(this.result).to eq("It is a Draw!")
      end

      it 'expects Rock to beat Scissors and Player 2 wins' do
        this = Game.new("Scissors", "Scissors", "Tom", "Harry")
        expect(this.result).to eq("It is a Draw!")
      end
    end
  end
end
