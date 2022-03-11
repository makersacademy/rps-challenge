require 'game'

describe Game do
  subject(:game) { described_class.new }

  describe '#computer_choice' do
    it 'contains an array for the computer to randomly select from' do
      expect(Game::OBJECTS).to include(game.computer_choice)
    end
  end
end