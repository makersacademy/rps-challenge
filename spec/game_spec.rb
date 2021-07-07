require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  let(:player) { double :player }

  describe '#Recieves Player' do
    it 'retrieves the first player' do
      expect(game.player_one).to eq player
    end

    it 'retrieves the Second player' do
      expect(game.player_two.name).to eq "Bot"
    end
  end

  describe '#Computer_selection' do
    it 'returns a random string' do
      expect(game.computer_selection).to be_a(String)
    end
  end

  describe '#play' do
    it 'should return player one' do
      expect(game.play("Rock", "Lizard")).to eq game.player_one
    end

    it 'should return player two' do
      expect(game.play("Rock", "Paper")).to eq game.player_two
    end

    it 'should return tie' do
      expect(game.play("Rock", "Rock")).to eq "tie"
    end
  end
end
