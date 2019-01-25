require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, player_two, 5) }
  let(:player_one) { double :player, name: "Paul" }
  let(:player_two) { double :player, name: "John" }
  let(:rock)       { double :player, move: "Rock" }
  let(:paper)      { double :player, move: "Paper" }
  let(:scissors)   { double :player, move: "Scissors" }

  describe '#class methods' do
    it '#Creates a new Game object' do
      expect(Game.create(player_one, player_two, 5)).to be_a Game
    end

    it '#Returns the given Game object' do
      game = Game.create(player_one, player_two, 5)
      expect(Game.instance).to eq game
    end
  end

  describe '#instance methods' do

  describe '#new' do
    it 'Initializes with an array of players' do
      expect(game.players).to eq [player_one, player_two]
    end
    it 'Initializes with rounds set to 5' do
      expect(game.rounds).to eq 5
    end
  end

  describe '#players' do
    it 'Returns the first player' do
      expect(game.player_one).to eq player_one
    end
    it 'Returns the second player' do
      expect(game.player_two).to eq player_two
    end
  end

  describe '#winner' do
    it 'Returns player_one if Rock vs Scissors' do
      rps = Game.new(rock, scissors, 5)
      expect(rps.winner?).to eq rock
    end
    it 'Returns player_one if Paper vs Rock' do
      rps = Game.new(paper, rock, 5)
      expect(rps.winner?).to eq paper
    end
    it 'Returns player_one if Scissors vs Paper' do
      rps = Game.new(scissors, paper, 5)
      expect(rps.winner?).to eq scissors
    end
    it 'Returns Draw! if moves are equal' do
      rps = Game.new(rock, rock, 5)
      expect(rps.winner?).to eq "Draw!"
    end
    it 'Returns player_two if Scissors vs Rock' do
      rps = Game.new(scissors, rock, 5)
      expect(rps.winner?).to eq rock
    end
  end
end
end
