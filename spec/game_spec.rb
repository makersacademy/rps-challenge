require './game'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

# the game will choose a random option

describe Game do

  let(:game) { Game.new }

  describe '#cpu_choice' do
    it 'chooses a random option' do
      srand(02)
      expect(game.cpu_choice).to eq 'ROCK'
    end
    it 'chooses a random option' do
      srand(01)
      expect(game.cpu_choice).to eq 'PAPER'
    end
    it 'chooses a random option' do
      srand(03)
      expect(game.cpu_choice).to eq 'SCISSORS'
    end
  end
end
