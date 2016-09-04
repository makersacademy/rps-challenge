require 'game'

describe Game do

  subject(:game_class) {described_class}
  subject(:game) {described_class.new(player, computer)}
  let (:player) {double :player, name: name}
  let (:name) {double :name}
  let (:computer) {double :computer}

  describe 'Class methods' do
    it '#self.create makes a game instance' do
      expect(game_class.create(player, computer)).to be_a(Game)
    end
    it '#self.instance shows the game instance' do
      expect(game_class.instance).to be_a(Game)
    end
  end

  describe 'Game has a player and computer' do
    it 'shows current player in current game' do
      expect(player).to receive(:name)
      game.player_name
    end
  end

end
