require 'rps'

describe RPS do
  let(:bimini) { double(:player, :name => "BIMINI BON BOULASH") }
  subject(:game) { described_class.new(bimini) }

  describe '#create' do
    it 'creates a game and stores it' do
      expect { RPS.create(bimini) }.to change { RPS.game }
    end
    it 'stores the game to class instance var' do
      RPS.create(bimini)
      expect(RPS.game).to be_instance_of(RPS)
    end
  end

  describe '#play' do
    it 'returns a winner' do
      expect { game.play("rock", "paper") }.to change { game.result }
    end
  end

  describe '#play' do
    srand(4)
    it 'player wins if they pick rock and computer picks scissors' do
      game.play("rock")
      expect(game.result).to eq :win
    end
    it 'player loses if they pick paper and computer picks scissors' do
      game.play("paper")
      expect(game.result).to eq :loss
    end
    it 'player draws if they pick scissors and computer picks scissors' do
      game.play("paper")
      expect(game.result).to eq :draw
    end

  end

end
