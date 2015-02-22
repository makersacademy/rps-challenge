class Game

  def initialize
    @players = []
  end

  def add_player(player)
    raise 'Only 2 players allowed' if @players.length == 2
    @players << player
  end

#neeed to find a way to refactor the method below as it is far too big

  def result
    if @players.first.weapon_choice.type == "scissors"
      if @players.last.weapon_choice.type == "rock"
        @players.last
      elsif @players.last.weapon_choice.type == "paper"
        @players.first
      else
        "draw"
      end
    elsif @players.first.weapon_choice.type == "rock"
      if @players.last.weapon_choice.type == "paper"
        @players.last
      elsif @players.last.weapon_choice.type == "scissors"
        @players.first
      else
        "draw"
      end
    else #rock
      if @players.last.weapon_choice.type == "paper"
        @players.last
      elsif @players.last.wweapon_choice.type == "scissors"
        @players.first
      else
        "draw"
      end
    end
  end

end