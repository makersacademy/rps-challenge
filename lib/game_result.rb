class GameResult

    attr_reader :weapons_users

  def initialize(umpire, player, computer)
    @umpire = umpire
    @player = player
    @computer = computer
    @weapons_users = {}
  end

  def get_weapon_choices
    weapons_users.merge!({ @player.weapon =>  @player.name })
    weapons_users.merge!({ @computer.weapon => @computer.name })
  end

  def announcement
    get_weapon_choices
    winning_weapon = check_weapons(weapons_users.keys)
    result_headliner(winning_weapon)
  end

  private def check_weapons(weapons)
    @umpire.rule_logic(weapons)
  end

  private def result_headliner(winning_weapon)
    if winning_weapon == :draw
      "It's a draw"
    else
      "#{weapons_users[winning_weapon]} is the winner"
    end
  end



end