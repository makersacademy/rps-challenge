require 'game.rb'

describe Game do

  subject(:game) {described_class.new(player, computer)}
  subject(:win_game) {described_class.new(winning_player, computer)}
  subject(:lose_game) {described_class.new(losing_player, computer)}
  subject(:drawing_game) {described_class.new(drawing_player, computer)}
  let(:player) {double :player, name: "Felix"}
  let(:computer) {double :computer, weapon: :scissors}
  let(:winning_player) {double :winning_player, weapon: :rock}
  let(:losing_player) {double :losing_player, weapon: :paper}
  let(:drawing_player) {double :drawing_player, weapon: :scissors}

  describe 'creating a game' do
    it 'creates a class instance of itself' do
      expect(Game.start_game(player, computer)).to be_an_instance_of(Game)
    end
  end

  describe '#initialize' do
    it 'starts a game with a player' do
      expect(game.player).to eq player
    end

    it 'starts the game with a computer' do
      expect(game.computer).to eq computer
    end
  end

  describe '#result' do
    it 'should return win if the player has won' do
      expect(win_game.result(win_game.player.weapon, win_game.computer.weapon)).to eq(:win)
    end

    it 'should return lose if the player has lost' do
      expect(lose_game.result(lose_game.player.weapon, lose_game.computer.weapon)).to eq(:lose)
    end

    it 'should return draw if the player and computer draw' do
      expect(drawing_game.result(drawing_game.player.weapon, drawing_game.computer.weapon)).to eq(:draw)
    end
  end

end
