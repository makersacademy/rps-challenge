require './game'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the game will choose a random option

describe Game do

  let(:game) { Game.new('ROCK') }

  describe '#cpu_choice' do
    it '"randomly" chooses rock' do
      srand(02)
      expect(game.cpu_choice).to eq 'ROCK'
    end
    it '"randomly" chooses paper' do
      srand(01)
      expect(game.cpu_choice).to eq 'PAPER'
    end
    it '"randomly" chooses scissors' do
      srand(03)
      expect(game.cpu_choice).to eq 'SCISSORS'
    end
  end

# a winner will be declared

  describe '#result' do
    it 'returns win' do
      srand(03)
      expect(game.result).to eq 'YOU WON!'
    end
    it 'returns loss' do
      rand(04)
      expect(game.result).to eq 'CPU WON!'
    end
    it 'returns draw' do
      srand(02)
      expect(game.result).to eq 'IT WAS A DRAW!'
    end
  end

end
