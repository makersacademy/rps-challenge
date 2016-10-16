require_relative 'player'

class Game

  attr_reader :player, :opp_choice, :player_1, :player_2

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def auto_turn
    @opp_choice = ['Rock', 'Paper', 'Scissors'].sample
  end

#For sure find a better way of doing this!
  def result
    case player_1.choice == 'Rock'
      when opp_choice == 'Paper'
        return "#{player_1.name} loses"
      when opp_choice == 'Scissors'
        return "#{player_2.name} loses"
      else player_1.choice == opp_choice
        return 'DRAW!'
      end
    case player_1.choice == 'Paper'
    when opp_choice == 'Rock'
        return "#{player_2.name} loses"
      when opp_choice == 'Scissors'
        return "#{player_1.name} loses"
      else player_1.choice == opp_choice
        return 'DRAW!'
      end
    case player_1.choice == 'Scissors'
      when opp_choice == 'Paper'
        return "#{player_2.name} loses"
      when opp_choice == 'Rock'
        return "#{player_1.name} loses"
    else player_1.choice == opp_choice
      return 'DRAW!'
    end
  end

end
