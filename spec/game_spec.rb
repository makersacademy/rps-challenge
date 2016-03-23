require 'game'

describe Game do
  let(:player1) { double :Player, name: 'Me', winner?: true }
  let(:player2) { double :Player, name: 'You', weapon: 'Weapon' }
  subject(:game) { described_class.new(player1: player1, player2: player2) }

  describe '#self.create' do
    let(:game_class) { described_class }
    it 'creates player objects' do
      expect(game_class).to receive :new
      game_setup = {
        player1: player1,
        player2: player2
      }
      game_class.create(game_setup)
    end
    describe '#weapons' do
      it 'returns a list of weapons' do
        weapons = [:rock, :paper, :scissors, :lizard, :spock]
        expect(game_class.weapons).to eq weapons
      end
    end
  end

  describe '#winner' do
    it 'tells us who won' do
      expect(game.winner).to eq player1
    end

    it 'returns nil if there it was a tie' do
    end
  end
end
