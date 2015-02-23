class GameResult

  attr_accessor :last_winner


  def initialize(umpire, player, computer)
    @umpire = umpire
    @player = player
    @computer = computer
  end

  def weapons_users
    {
    @player.weapon => @player.name,
    @computer.weapon => @computer.name
    }
  end

  def announcement
    weapons_users
    winning_weapon = check_weapons(weapons_users.keys)
    result_headliner(winning_weapon)
  end

private

    def check_weapons(weapons)
      @winning_weapon = @umpire.rule_logic(weapons)
    end

    def result_headliner(winning_weapon)
      if winning_weapon == :draw
        "It's a draw"
      else
        "#{weapons_users[winning_weapon]} is the winner"
      end
    end

end