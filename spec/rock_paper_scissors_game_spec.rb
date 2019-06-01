require 'rock_paper_scissors_game'

describe RockPaperScissorsGame do
  let(:my_rpsg){RockPaperScissorsGame.create(player_double_1, player_double_2)}
  let(:player_double_1) { double('player_double_1', name: 'Peter') }
  let(:player_double_2) { double('player_double_2', name: 'Paul') }

  describe 'instantiating and using singleton' do
    it 'can store an instance of itself' do
      RockPaperScissorsGame.create(player_double_1, player_double_2)

      game = RockPaperScissorsGame.instance

      expect(game).to be_instance_of(RockPaperScissorsGame)
    end

    it 'can store the same instance' do
      RockPaperScissorsGame.create(player_double_1, player_double_2)

      game1 = RockPaperScissorsGame.instance
      game2 = RockPaperScissorsGame.instance

      expect(game1).to be(game2)
    end

    it 'can create a new instance' do
      RockPaperScissorsGame.create(player_double_1, player_double_2)
      game1 = RockPaperScissorsGame.instance

      RockPaperScissorsGame.create(player_double_1, player_double_2)
      game2 = RockPaperScissorsGame.instance

      expect(game1).to_not be(game2)
    end
  end

  describe 'storing players' do
    it 'can store player 1' do
      expect(my_rpsg.player_one).to eq(player_double_1)
    end

    it 'can store player 2' do
      expect(my_rpsg.player_two).to eq(player_double_2)
    end
  end

  describe '#winner_message' do
    it 'shows a draw if both rock' do
      allow(player_double_1).to receive(:weapon).and_return('rock')
      allow(player_double_2).to receive(:weapon).and_return('rock')

      expect(my_rpsg.winner_message).to eq("It's a draw!")
    end

    it 'shows a draw if both scissors' do
      allow(player_double_1).to receive(:weapon).and_return('scissors')
      allow(player_double_2).to receive(:weapon).and_return('scissors')

      expect(my_rpsg.winner_message).to eq("It's a draw!")
    end

    it 'shows a draw if both paper' do
      allow(player_double_1).to receive(:weapon).and_return('paper')
      allow(player_double_2).to receive(:weapon).and_return('paper')

      expect(my_rpsg.winner_message).to eq("It's a draw!")
    end

    it 'shows a draw if both lizard' do
      allow(player_double_1).to receive(:weapon).and_return('lizard')
      allow(player_double_2).to receive(:weapon).and_return('lizard')

      expect(my_rpsg.winner_message).to eq("It's a draw!")
    end

    it 'shows a draw if both spock' do
      allow(player_double_1).to receive(:weapon).and_return('spock')
      allow(player_double_2).to receive(:weapon).and_return('spock')

      expect(my_rpsg.winner_message).to eq("It's a draw!")
    end

    it 'shows a player 1 win if rock and scissors' do
      allow(player_double_1).to receive(:weapon).and_return('rock')
      allow(player_double_2).to receive(:weapon).and_return('scissors')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 2 win if rock and spock' do
      allow(player_double_1).to receive(:weapon).and_return('rock')
      allow(player_double_2).to receive(:weapon).and_return('spock')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 1 win if rock and lizard' do
      allow(player_double_1).to receive(:weapon).and_return('rock')
      allow(player_double_2).to receive(:weapon).and_return('lizard')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 2 win if rock and paper' do
      allow(player_double_1).to receive(:weapon).and_return('rock')
      allow(player_double_2).to receive(:weapon).and_return('paper')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 2 win if scissors and spock' do
      allow(player_double_1).to receive(:weapon).and_return('scissors')
      allow(player_double_2).to receive(:weapon).and_return('spock')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 1 win if scissors and lizard' do
      allow(player_double_1).to receive(:weapon).and_return('scissors')
      allow(player_double_2).to receive(:weapon).and_return('lizard')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 1 win if scissors and paper' do
      allow(player_double_1).to receive(:weapon).and_return('scissors')
      allow(player_double_2).to receive(:weapon).and_return('paper')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 2 win if scissors and rock' do
      allow(player_double_1).to receive(:weapon).and_return('scissors')
      allow(player_double_2).to receive(:weapon).and_return('rock')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 2 win if spock and lizard' do
      allow(player_double_1).to receive(:weapon).and_return('spock')
      allow(player_double_2).to receive(:weapon).and_return('lizard')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 2 win if spock and paper' do
      allow(player_double_1).to receive(:weapon).and_return('spock')
      allow(player_double_2).to receive(:weapon).and_return('paper')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 1 win if spock and rock' do
      allow(player_double_1).to receive(:weapon).and_return('spock')
      allow(player_double_2).to receive(:weapon).and_return('rock')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 1 win if spock and scissors' do
      allow(player_double_1).to receive(:weapon).and_return('spock')
      allow(player_double_2).to receive(:weapon).and_return('scissors')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 1 win if lizard and paper' do
      allow(player_double_1).to receive(:weapon).and_return('lizard')
      allow(player_double_2).to receive(:weapon).and_return('paper')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 2 win if lizard and rock' do
      allow(player_double_1).to receive(:weapon).and_return('lizard')
      allow(player_double_2).to receive(:weapon).and_return('rock')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 2 win if lizard and scissors' do
      allow(player_double_1).to receive(:weapon).and_return('lizard')
      allow(player_double_2).to receive(:weapon).and_return('scissors')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 1 win if lizard and spock' do
      allow(player_double_1).to receive(:weapon).and_return('lizard')
      allow(player_double_2).to receive(:weapon).and_return('spock')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 1 win if paper and rock' do
      allow(player_double_1).to receive(:weapon).and_return('paper')
      allow(player_double_2).to receive(:weapon).and_return('rock')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 2 win if paper and scissors' do
      allow(player_double_1).to receive(:weapon).and_return('paper')
      allow(player_double_2).to receive(:weapon).and_return('scissors')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end

    it 'shows a player 1 win if paper and spock' do
      allow(player_double_1).to receive(:weapon).and_return('paper')
      allow(player_double_2).to receive(:weapon).and_return('spock')

      expect(my_rpsg.winner_message).to eq("The winner is Peter!")
    end

    it 'shows a player 2 win if paper and lizard' do
      allow(player_double_1).to receive(:weapon).and_return('paper')
      allow(player_double_2).to receive(:weapon).and_return('lizard')

      expect(my_rpsg.winner_message).to eq("The winner is Paul!")
    end
  end
end
