require 'game'

describe Game do
  subject(:game) { described_class.new }
  
  describe '#computer_choice' do
    it 'generates a random choice for the computer' do
      expect([:rock, :paper, :scissors]).to include game.computer_choice
    end
  end
end