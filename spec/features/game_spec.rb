require 'game'
describe Game do
  describe '#rules' do
    it 'return default rules' do
      game = Game.new()
      expect(game.rules).to eq Game::DEFAULT_RULES
      # result
      # players
    end
    it 'return custom rules' do
      myrules = { 'rock' => 'paper' }
      game = Game.new(myrules)
      expect(game.rules).to eq myrules
      # result
      # players
    end
  end
  # describe '#add_player' do
  #   it 'return players' do
  #
  #   end
  # end
end
