class Game

  attr_accessor :players

  def initialize
    @players = []
  end

  def add_player(player)
    raise 'Only 2 players allowed' if @players.length == 2
    @players << player
  end

#neeed to find a way to refactor the method below as it is far too big

  def result
    if @players.first.weapon_choice == "scissors"
      if @players.last.weapon_choice == "rock"
        @players.last
      elsif @players.last.weapon_choice == "paper"
        @players.first
      else
        "draw"
      end
    elsif @players.first.weapon_choice == "rock"
      if @players.last.weapon_choice == "paper"
        @players.last
      elsif @players.last.weapon_choice == "scissors"
        @players.first
      else
        "draw"
      end
    else #paper
      if @players.last.weapon_choice== "rock"
        @players.first
      elsif @players.last.weapon_choice == "scissors"
        @players.last
      else
        "draw"
      end
    end
  end

end