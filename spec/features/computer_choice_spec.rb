# the game will choose a random option
require './lib/computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe 'Computer makes a choice' do
    it 'returns a random choice' do
      expect([:rock, :paper, :scissors]).to include computer.make_random_choice
    end
  end
end
