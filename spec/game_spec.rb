require 'game'

describe Game do
  let (:player) {double :player, name: 'Rob'}
  let (:weapons) {double :weapons, random_weapon: :paper}
  subject(:game) {Game.new(player, weapons)}

  describe '#initialize player' do
    it 'player' do
      expect(game.player).to eq player
    end
  end

  describe '#player name' do
    it 'returns the player name' do
      expect(game.player_name).to eq 'Rob'
    end
  end

  describe '#attack player weapon' do
    it 'initializes player weapon' do
      game.attack(:rock)
      expect(game.player_weapon).to eq :rock
    end

    it 'initializes opponent weapon' do
      game.attack(:rock)
      expect(game.opponent_weapon).to eq :paper
    end
  end

  describe '#result' do
    let (:weapons) {double :weapons, random_weapon: :paper, rules: :loose}
    it 'player :rock vs opponent :paper result loose' do
      game.attack(:rock)
      expect(game.result()).to eq :loose
    end
  end
end