require 'game'
require 'player'
require 'computer'

describe Game do
subject(:game)  { described_class.new(player, computer) }
let (:player)   { double :player, weapon: :rock }
let (:computer) { double :computer, weapon: :scissors }

  describe '#initialize' do
    it 'gets the players name' do
      expect(game.player).to eq player
    end
  end

  describe '#weapon_v_weapon' do
    it 'tests the weapons using the RULES hash' do
      expect(game.weapon_v_weapon).to eq :win
    end
  end

  describe '#add_win_to_score' do
    it 'should add to player score if player wins' do
      expect{game.weapon_v_weapon}.to change{game.player_score}.by(1)
    end
  end

  describe '#best_of_three_winner' do
    it 'calculates who wins two games first' do
      3.times{game.weapon_v_weapon}
      game.best_of_three_winner
      expect(game.winner_of_three).to eq player
    end
  end

end
