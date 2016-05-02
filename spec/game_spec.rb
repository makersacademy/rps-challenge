require 'game'

describe Game do
  let(:player) {double :player, score: 0}
  subject(:game) {described_class.new(player)}
  WINNING_SCORE = 5

  describe '#initialize' do
    it 'should initialize with a player' do
      expect(game.player).to eq player
    end

    it 'should initialize with a computer opponent' do
      expect(game.computer).to be_a(Computer)
    end

    it 'should initialize with a list of winning moves' do
      expect(game.winning_moves).to be_an(Array)
    end
  end

  describe 'attributes' do
    it 'returns the player\'s name' do
      allow(player).to receive(:player).and_return(player)
      expect(game.player).to eq player
    end
  end

  describe '#self.create' do
    it 'should return create an instance of the game class' do
      expect(Game.create(player)).to be_a(Game)
    end
  end

  describe '#self.instance' do
    it 'should return an instance of the game class' do
      expect(Game.instance).to be_a(Game)
    end
  end

  describe '#player_choice' do
    it 'should return a symbol' do
      expect(game.player_choice('ROCK')).to be_a(Symbol)
    end
    it 'should store the player\'s choice in player_move' do
      game.player_choice('ROCK')
      expect(game.player_move).to eq(:ROCK)
    end
  end

  describe '#computer_choice' do
    it 'should store the computer\'s choice in computer_move' do
      expect_any_instance_of(Array).to receive(:sample).and_return(:PAPER)
      expect(game.computer_choice).to eq(:PAPER)
    end
  end

  describe '#result' do
    context 'drawing' do
      it 'should draw the game' do
        draws = [
          { player_move: 'ROCK', computer_move: :ROCK},
          { player_move: 'PAPER', computer_move: :PAPER},
          { player_move: 'SCISSORS', computer_move: :SCISSORS},
          { player_move: 'LIZARD', computer_move: :LIZARD},
          { player_move: 'SPOCK', computer_move: :SPOCK}
        ]
        draws.each do |moves|
          game.player_choice(moves[:player_move])
          game.instance_variable_set("@computer_move", moves[:computer_move])
          expect(game.calculate_result).to eq 'draw'
        end
      end
      it 'shouldn\'t change the score' do
        game.player_choice('ROCK')
        game.instance_variable_set("@computer_move", :ROCK)
        expect(game.player.score).to eq 0
        expect(game.computer.score).to eq 0
      end
    end
    context 'winning' do
      it 'should win the game' do
        wins = [
          { player_move: 'ROCK', computer_move: :LIZARD},
          { player_move: 'LIZARD', computer_move: :SPOCK},
          { player_move: 'SPOCK', computer_move: :SCISSORS},
          { player_move: 'SCISSORS', computer_move: :PAPER},
          { player_move: 'PAPER', computer_move: :ROCK},
          { player_move: 'ROCK', computer_move: :SCISSORS},
          { player_move: 'SCISSORS', computer_move: :LIZARD},
          { player_move: 'LIZARD', computer_move: :PAPER},
          { player_move: 'PAPER', computer_move: :ROCK},
        ]
        wins.each do |moves|
          game.player_choice(moves[:player_move])
          game.instance_variable_set("@computer_move", moves[:computer_move])
          allow(player).to receive(:score=).and_return 1
          expect(game.calculate_result).to eq 'win'
        end
      end
      it 'should change the player\'s score by 1' do
        game.player_choice('PAPER')
        game.instance_variable_set("@computer_move", :ROCK)
        game.result
      end
    end
    context 'losing' do
      it 'should lose the game' do
        loses = [
          { player_move: 'ROCK', computer_move: :PAPER },
          { player_move: 'PAPER', computer_move: :LIZARD },
          { player_move: 'LIZARD', computer_move: :SCISSORS },
          { player_move: 'SCISSORS', computer_move: :ROCK },
          { player_move: 'ROCK', computer_move: :PAPER },
          { player_move: 'PAPER', computer_move: :SCISSORS },
          { player_move: 'SCISSORS', computer_move: :SPOCK },
          { player_move: 'SPOCK', computer_move: :LIZARD },
          { player_move: 'LIZARD', computer_move: :ROCK }
        ]
        loses.each do |moves|
          game.player_choice(moves[:player_move])
          game.instance_variable_set("@computer_move", moves[:computer_move])
          expect(game.calculate_result).to eq 'lose'
        end
      end
      it 'should change the computer\'s score by 1' do
        game.player_choice('PAPER')
        game.instance_variable_set("@computer_move", :SCISSORS)
        expect{game.calculate_result}.to change{game.computer.score}.by 1
      end
    end
  end

  describe '#outcome' do
    it 'should return a winner' do
      allow(player).to receive(:score=).and_return WINNING_SCORE
      allow(player).to receive(:name).and_return 'player'
      game.win
      expect(game.outcome).to eq 'player'
    end
    it 'should return a loser' do
      game.lose
      expect(game.outcome).to eq 'Computer'
    end
  end
end
