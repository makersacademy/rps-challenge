require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2, 5) }
  let(:player1) { double :player, name: "Paul", score: 3 }
  let(:player2) { double :player, name: "John", score: 2 }
  let(:rock)       { double :player, move: "Rock" }
  let(:paper)      { double :player, move: "Paper" }
  let(:scissors)   { double :player, move: "Scissors" }

  describe '#class methods' do
    it '#Creates a new Game object' do
      expect(Game.create(player1, player2, 5)).to be_a Game
    end

    it '#Returns the given Game object' do
      game = Game.create(player1, player2, 5)
      expect(Game.instance).to eq game
    end
  end

  describe '#instance methods' do

    describe '#new' do
      it 'Initializes with an array of players' do
        expect(game.players).to eq [player1, player2]
      end
      it 'Initializes with rounds set to 5' do
        expect(game.total_rounds).to eq 5
      end
      it 'Initializes with current_round set to 0' do
        expect(game.current_round).to eq 0
      end
    end

    describe '#players' do
      it 'Returns the first player' do
        expect(game.player1).to eq player1
      end
      it 'Returns the second player' do
        expect(game.player2).to eq player2
      end
    end

    describe '#turn' do
      it 'Initializes with turn set to player1' do
        expect(game.turn).to eq player1
      end
      it 'Switches the turn of the player' do
        game.switch_turn
        expect(game.turn).to eq player2
      end
    end

    describe '#round_winner' do
      it 'Returns player1 if Rock vs Scissors' do
        rps = Game.new(rock, scissors, 5)
        expect(rps.round_winner?).to eq rock
      end
      it 'Returns player1 if Paper vs Rock' do
        rps = Game.new(paper, rock, 5)
        expect(rps.round_winner?).to eq paper
      end
      it 'Returns player1 if Scissors vs Paper' do
        rps = Game.new(scissors, paper, 5)
        expect(rps.round_winner?).to eq scissors
      end
      it 'Returns Draw! if moves are equal' do
        rps = Game.new(rock, rock, 5)
        expect(rps.round_winner?).to eq "Draw!"
      end
      it 'Returns player2 if Scissors vs Rock' do
        rps = Game.new(scissors, rock, 5)
        expect(rps.round_winner?).to eq rock
      end
    end

    describe '#game_over' do
      it 'Returns player1 if score exceeds half of total rounds' do
        expect(game.game_over?).to eq player1
      end
    end
 # End of Instance Methods
  end
  # End of Game
end
