require 'game'
describe Game do
  describe '#rules' do
    it 'return rules' do
      game = Game.new()
      expect(game.rules).to eq Game::DEFAULT_RULES
    end
  end
  context 'custom rules' do
    it 'return new rules' do
      rules = { 'rock' => 'scissors' }
      game = Game.new(rules)
      expect(game.rules).to eq rules
    end
  end
end
