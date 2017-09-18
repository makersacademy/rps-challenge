require 'game.rb'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:players) { [player_1, player_2] }
  subject(:game) { described_class.new }

  describe '#calculating_winner' do
    it 'finds a winner' do
      player_1 = double :player, :weapon => 'Rock', :name => 'Rory', :points => 0
      player_2 = double :player, :weapon => 'Scissors', :name => 'Opponent', :points => 0
      allow(player_1).to receive(:point_change)
      allow(player_2).to receive(:point_change)
      game.calculating_winner player_1, player_2
      expect(game.result).to eq "1 point for #{player_1.name}! Shall we play again?"
    end

    it 'finds a draw' do
      player_1 = double :player, :weapon => 'Rock', :name => 'Rory', :points => 0
      player_2 = double :player, :weapon => 'Rock', :name => 'Opponent', :points => 0
      game.calculating_winner player_1, player_2
      expect(game.result).to eq "Draw! Shall we play again?"
    end
  end

  describe '#play_over_multiple' do
    it 'plays over a even matched group to find a draw' do
      player_1 = double :player, :weapon => 'Rock', :name => 'Rory', :points => 0
      player_2 = double :player, :weapon => 'Rock', :name => 'Opponent', :points => 0
      player_3 = double :player, :weapon => 'Rock', :name => 'Opponent2', :points => 0
      allow(player_1).to receive(:point_change)
      allow(player_2).to receive(:point_change)
      allow(player_3).to receive(:point_change)

      game.play_over_multiple([player_1, player_2, player_3, player_1, player_2])
      expect(game.result).to eq 'Draw! Shall we play again?'
    end
  end

  # describe 'calculating a winner' do
  #   it 'can look for a winner' do
  #     expect(game)
  #   end
  # end

end
