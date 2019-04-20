require 'game'
require 'computer'
require 'player'

describe Game do
  subject(:jordan) { Player.new('jordan') }

  describe '#randomise_weapon' do
    it 'computer selects a random weapon' do
      computer = Computer.new
      srand(102)
      expect(computer.randomise_weapon).to eq "Rock"
    end

  end

  # describe '#winner?' do
  #   it 'informs winner' do
  #     game = Game.new
  #     computer = Computer.new
  #     player = Player.new('jordan')
  #     expect(computer.randomise_weapon).to eq "Rock"
  #     srand(7)
  #     computer.randomise_weapon
  #     jordan.randomise_weapon
  #     expect(jordan.randomise_weapon).to eq "Scissors"
  #     expect(game.winner?).to eq "You chose scissors and the computer chose rock - you win! Well done!"
  #

    end
