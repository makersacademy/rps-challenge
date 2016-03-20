require 'game'

describe Game do

  let(:player) { double :player }
  let(:player2) { double :player }
  let(:player3) { double :player }

  context '#game_result' do
    it 'allows the player to win a game' do
      Game.start(player)
      allow(player).to receive(:choice).and_return("paper")
      allow(player).to receive(:opponent_choice).and_return("rock")
      expect(Game.game_won?).to be true
      expect(Game.game_result).to eq "You won!"
    end

    it 'allows the player to lose a game' do
      Game.start(player2)
      allow(player2).to receive(:choice).and_return("rock")
      allow(player2).to receive(:opponent_choice).and_return("paper")
      allow(player2).to receive(:game_lost?)
      expect(Game.game_lost?).to be true
    end

    it 'allows the player to tie a game' do
      Game.start(player3)
      allow(player3).to receive(:choice).and_return("rock")
      allow(player3).to receive(:opponent_choice).and_return("rock")
      expect(Game.game_tied?).to be true
    end
  end

end
