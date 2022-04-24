require './lib/game'
require './lib/random'
require './lib/result'

describe Game do

  subject(:round) { described_class.new }

  it 'should start with a random choice for computer' do
    expect(round.computer).to be_a(String)
  end

  describe '#play_game' do
    it 'should evaluate a round of the game' do
      # allow_any_instance_of(Game).to receive(:computer).and_return('rock')
      expect(round).to receive(:play_game) { 'rock' }
      round.play_game("rock")
    end
  end
end
