require './lib/game'
require './lib/random'

describe Game do

  subject(:game) { described_class.new }

  it 'should start with a random choice for computer' do
    expect(game.computer).to be_a(String)
  end

  describe '#play_game' do
    it 'should determine it is a draw' do
      expect(game.play_game("rock", "rock")).to eq("It's a draw!")
    end
  end
end
