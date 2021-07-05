require 'game'

describe Game do
  subject { Game.new("Dave", "Computer")}

  it 'creates an instance of game' do
    expect(subject).to be_an_instance_of Game
  end

  it 'expects instance to create a player1 & player2' do
    expect(subject.player1).to eq "Dave"
    expect(subject.player2).to eq "Computer"
  end

  describe '#results' do
    it 'checks when both players draw' do
      expect(subject.results('Rock', 'Rock')).to eq "It's a draw"
    end

    it 'checks when player 1 wins' do
      expect(subject.results('Rock', 'Scissors')).to eq "Player 1 wins"
    end

    it 'checks when player 2 wins' do
      expect(subject.results('Rock', 'Paper')).to eq "Player 2 wins"
    end
  end
end