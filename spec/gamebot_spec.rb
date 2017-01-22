require 'gamebot'

describe GameBot do
  subject(:gamebot) { described_class.new }

  describe '#game_form' do
    it 'returns a game form randomly' do
      expect(GameBot::UTENSILS).to include gamebot.game_utensil
    end
  end
end
