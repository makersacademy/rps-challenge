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
      expect(game_class.current_game).to be_a(Game)
    end
  end

  describe 'Game has a player and computer' do
    it 'shows current player in current game' do
      expect(game.player).to eq player
    end
    it 'shows computer in current game' do
      expect(game.computer).to eq computer
    end
  end

  describe '#result - player beats computer = a win' do
    it 'player: rock vs. computer: scissors' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(computer).to receive(:weapon).and_return(:scissors)
      expect(game.result).to eq :win
    end
    it 'player: rock vs. computer: rock' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(computer).to receive(:weapon).and_return(:rock)
      expect(game.result).to eq :draw
    end
    it 'player: rock vs. computer: paper' do
      allow(player).to receive(:weapon).and_return(:rock)
      allow(computer).to receive(:weapon).and_return(:paper)
      expect(game.result).to eq :loss
    end
  end

end
