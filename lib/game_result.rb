class GameResult

    attr_reader :weapons_users
    attr_accessor :last_winner


  def initialize(umpire, player, computer)
    @umpire = umpire
    @player = player
    @computer = computer
    @weapons_users = {}
    @last_winner = ""
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

  def check_weapons(weapons)
     @winning_weapon = @umpire.rule_logic(weapons)
  end

  def result_headliner(winning_weapon)
    if winning_weapon == :draw
      @last_winner = "draw"
      "It's a draw"
    else
      @last_winner = weapons_users[winning_weapon]
      "#{@last_winner} is the winner"
    end
  end

  def last_winner
    @last_winner
  end


end