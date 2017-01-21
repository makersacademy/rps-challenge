require 'game'

describe Game do

  subject(:dave)  {Game.new("player1", "option1", "player2", "option2")}
  subject(:game1) {Game.new("player1", "scissors", "player2", "paper")}
  subject(:game2) {Game.new("player1", "scissors", "player2", "rock")}
  subject(:game3) {Game.new("player1", "rock", "player2", "scissors")}
  subject(:game4) {Game.new("player1", "rock", "player2", "paper")}
  subject(:game5) {Game.new("player1", "paper", "player2", "scissors")}
  subject(:game6) {Game.new("player1", "paper", "player2", "rock")}
  subject(:game7) {Game.new("player1", "paper", "player2", "paper")}


  it 'should return player 1 name' do
    expect(dave.player1).to eq "player1"
  end
  it 'should return player 2 name' do
    expect(dave.player2).to eq 'player2'
  end
  it 'should return player1 chosen option' do
    expect(dave.option1).to eq "option1"
  end
  it 'should return player2 chosen option' do
    expect(dave.option2).to eq "option2"
  end

  describe '#play'do

    context 'game1: player1 with scissor vs player2 with paper' do
      it 'returns player1 as the winner' do
        expect(game1.play).to eq "player1 wins!"
      end
    end
    context 'game2: player1 with scissor vs player2 with rock' do
      it 'returns player2 as the winner' do
        expect(game2.play).to eq "player2 wins!"
      end
    end

    context 'game3: player1 with rock vs player2 with scissors' do
      it 'returns player1 as the winner' do
        expect(game3.play).to eq "player1 wins!"
      end
    end

    context 'game4: player1 with rock vs player2 with paper' do
      it 'returns player2 as the winner' do
        expect(game4.play).to eq "player2 wins!"
      end
    end

    context 'game5: player1 with paper vs player2 with scissors' do
      it 'returns player1 as the winner' do
        expect(game5.play).to eq "player2 wins!"
      end
    end

    context 'game6: player1 with paper vs player2 with rock' do
      it 'returns player1 as the winner' do
        expect(game6.play).to eq "player1 wins!"
      end
    end

    context 'game7: Tie' do
      it 'returns a tie'do
        expect(game7.play).to eq "This is a tie!"
      end
    end
  end
end
