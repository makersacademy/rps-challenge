require 'game.rb'


describe 'Game' do
  let(:game) {Game.new("rock")}

  describe '#player_move' do
    it 'game can show player move' do
      expect(game.player_move).to eq("rock")
    end
  end

  describe '#fight' do
    it 'game can pick a random weapon' do
      srand(0)
      game.computer_move
      expect(game.computer_move).to eq('scissors')
    end
  end

  describe '#fight' do
    it 'game can allow player to win' do
      srand(0)
      game.computer_move
      expect(game.fight).to eq("You have won!")
    end
  end

    it 'game can draw' do
      srand(3)
      game.computer_move
      expect(game.fight).to eq("It's a draw!")
    end

    it 'game can win' do
      srand(1)
      expect(game.fight).to eq("You have lost")
    end
  end
