require 'game'

describe Game do
  let(:game) { described_class.new("name") }
  let(:selection) { [:Rock, :Paper, :Scissors ] }

  describe '#random_choice' do
    it 'player can win' do
      expect(selection).to include(game.random_choice)
    end
  end

  describe '#winner?' do
    it 'player can win' do
      game.player_choice = :Scissors
      game.opponent_choice = :Paper
      expect(game.winner?).to eq "You Win!"
    end

    it 'player can draw' do
      game.player_choice = :Scissors
      game.opponent_choice = :Scissors
      expect(game.winner?).to eq "You Draw!"
    end

    it 'player can lose' do
      game.player_choice = :Scissors
      game.opponent_choice = :Rock
      expect(game.winner?).to eq "You Lose!"
    end
  end

end