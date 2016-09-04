require 'game'

describe Game do

  subject(:game_class) {described_class}
  subject(:game) {described_class.new(player_1, player_2)}
  let (:player_1) {double :player_1, name: name}
  let (:player_2) {double :player_2, name: name}
  let (:name) {double :name}

  describe 'Class methods' do
    it '#self.create makes a game instance' do
      expect(game_class.create(player_1, player_2)).to be_a(Game)
    end
    it '#self.instance shows the game instance' do
      expect(game_class.current_game).to be_a(Game)
    end
  end

  describe 'Game has a player and computer' do
    it 'shows current player in current game' do
      expect(game.player_1).to eq player_1
    end
    it 'shows computer in current game' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#result - player beats computer = a win' do
    it 'player: rock vs. computer: scissors' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq :win
    end
    it 'player: rock vs. computer: rock' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq :draw
    end
    it 'player: rock vs. computer: paper' do
      allow(player_1).to receive(:weapon).and_return(:rock)
      allow(player_2).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq :loss
    end
  end

end
