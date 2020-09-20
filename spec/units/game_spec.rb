require 'game'

describe Game do
  subject(:game) { Game.new("Penn", "Teller") }
  it 'initializes with 2 players' do
    expect(game.p1).to eq "Penn"
    expect(game.p2).to eq "Teller"
  end

  it 'allows a computer opponent' do
    solo_game = Game.new("Crusoe")
    expect(solo_game.p1).to eq "Crusoe"
    expect(solo_game.p2).to eq "AI"
  end

  describe '#p1_choice' do
    it 'returns the value of player choice' do
      expect(game.p1_choice('lizard')).to eq 4
    end
  end 

  describe '#randomiser' do
    it 'returns a random selection' do
      srand(4)
      expect(game.randomiser).to eq 3
    end
  end

  describe '#message' do
    it 'returns a winning message' do
      game.p1_choice('lizard')
      srand(4)
      game.randomiser
      game.compare
      expect(game.message).to eq 'You win'
    end

    it 'returns a losing message' do
      game.p1_choice('rock')
      srand(4)
      game.randomiser
      game.compare
      expect(game.message).to eq 'You lose'
    end

    it 'returns a tie message' do
      game.p1_choice('paper')
      srand(4)
      game.randomiser
      game.compare
      expect(game.message).to eq "It's a tie"
    end

  end

end
    