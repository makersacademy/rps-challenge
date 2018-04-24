require 'game'
describe 'Game' do

  describe '#round' do
    subject(:game) { rules = { :winner => :loser }; Game.new(rules) }

    it 'won' do
      player_choice = :winner
      computer_choice = :loser
      expect(game.round(player_choice, computer_choice)).to eq :won
    end

    it 'lost' do
      player_choice = :loser
      computer_choice = :winner
      expect(game.round(player_choice, computer_choice)).to eq :lost
    end

    it 'draw' do
      player_choice = :winner
      computer_choice = :winner
      expect(game.round(player_choice, computer_choice)).to eq :draw
    end
  end
end
