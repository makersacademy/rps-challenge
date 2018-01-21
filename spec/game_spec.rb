require_relative '../lib/game.rb'

describe Game do

  let(:player) { double :player, win: nil }
  let(:computer) { double :computer, win: nil }
  subject(:game) { described_class.new(player, computer) }

  describe '#initalize' do
    it 'initializes with a player' do
      expect(Game).to respond_to(:new).with(1).argument
    end

    it 'stores an instance of player' do
      expect(game.player).to eq(player)
    end
  end

  describe '#create' do
    it 'creates a new instance of itself' do
      expect(Game.create(player)).to be_an_instance_of(Game)
    end
  end

  describe '#instance' do
    it 'stores an instance of game' do
      game = Game.create(player)
      expect(Game.instance).to eq(game)
    end
  end

  describe '#calculate' do
    it 'increases @rounds by one if the player wins' do
      expect { game.calculate("rock", "scissors") }.to change { game.rounds }.from(0).to(1)
    end

    it 'increases @rounds by one if the player loses' do
      expect { game.calculate("scissors", "rock") }.to change { game.rounds }.from(0).to(1)
    end

    it 'stores the player as the winner when player chooses rock and computer chooses scissors' do
      expect { game.calculate("rock", "scissors") }.to change { game.winner }.to(player)
    end

    it 'stores the player as the winner when player chooses scissors and computer chooses paper' do
      expect { game.calculate("scissors", "paper") }.to change { game.winner }.to(player)
    end

    it 'stores the player as the winner when player chooses paper and computer chooses rock' do
      expect { game.calculate("paper", "rock") }.to change { game.winner }.to(player)
    end

    it 'stores the computer as the winner when player chooses rock and computer chooses paper' do
      expect { game.calculate("rock", "paper") }.to change { game.winner }.to(computer)
    end

    it 'stores the computer as the winner when player chooses paper and computer chooses scissors' do
      expect { game.calculate("paper", "scissors") }.to change { game.winner }.to(computer)
    end

    it 'stores the computer as the winner when player chooses paper and computer chooses scissors' do
      expect { game.calculate("scissors", "rock") }.to change { game.winner }.to(computer)
    end

    it 'doesn\'t store a winner if both parties pick paper' do
      expect { game.calculate("paper", "paper") }.not_to change { game. winner }
    end

    it 'doesn\'t store a winner if both parties pick rock' do
      expect { game.calculate("rock", "rock") }.not_to change { game. winner }
    end

    it 'doesn\'t store a winner if both parties pick scissors' do
      expect { game.calculate("scissors", "scissors") }.not_to change { game. winner }
    end

  end

  describe '#clear_winner' do
    it 'clears the winner' do
      game.calculate("rock", "scissors")
      expect { game.clear_winner }.to change { game.winner }.from(player).to(nil)
    end
  end

  describe '#finished?' do
    it 'returns true if three rounds have been completed' do
      3.times { game.calculate("rock", "scissors") }
      expect(game.finished?).to eq(true)
    end
  end


end
