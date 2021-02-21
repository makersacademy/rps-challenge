require 'rps'

describe RPS do
  let(:bimini) { double(:player, :name => "BIMINI BON BOULASH") }
  let(:game_log) { double(:game_log, :games => [], :add_game => [] ) }
  subject(:game) { described_class.new(bimini, game_log) }

  describe '#create' do
    it 'creates a game and stores it' do
      expect { RPS.create(bimini, game_log) }.to change { RPS.game }
    end
    it 'stores the game to class instance var' do
      RPS.create(bimini, game_log)
      expect(RPS.game).to be_instance_of(RPS)
    end
  end

  describe '#play' do
    it 'returns a winner' do
      expect { game.play("rock", "paper") }.to change { game.result }
    end
  end

  describe '#play' do
    it 'player wins if they pick rock and computer picks scissors' do
      srand(4)
      game.play("rock")
      expect(game.result).to eq :win
    end
    it 'player loses if they pick paper and computer picks scissors' do
      srand(4)
      game.play("paper")
      expect(game.result).to eq :loss
    end
    it 'player draws if they pick scissors and computer picks scissors' do
      srand(4)
      game.play("scissors")
      expect(game.result).to eq :draw
    end
    it 'adds a game to the gamelog' do
      expect(game_log).to receive(:add_game)
      game.play("scissors")
    end

  end

end
