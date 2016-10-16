require 'game'

describe Game do
  let(:game) { Game.new("Rock Biter") }

  describe '#player' do
    it 'accepts player' do
      expect(game.player).to eq "Rock Biter"
    end
  end

  describe '#winner' do
    it 'should return true if player one is winning' do
      game.who_wins(:rock, :scissors)
      expect(game.winner).to be true
    end

    it 'should return false if player one is loosing' do
      game.who_wins(:rock, :paper)
      expect(game.winner).to be false
    end

    it 'should return nil in case of a tie' do
      game.who_wins(:rock, :rock)
      expect(game.winner).to be_nil
    end
  end

end
