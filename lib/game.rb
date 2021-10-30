class Game

  attr_reader :result

  @@weapons = ['paper', 'scissors', 'rock']

  def initialize(player)
    @player = player
  end

  def player_weapon(weapon)
    @player_weapon = weapon
    puts "You selected #{@player_weapon}"
  end

  def run_game
    @cpu_weapon = cpu_weapon
    @result = determine_result
    print_result
  end

  private

  def cpu_weapon
    @@weapons[rand(0..2)]
    puts "CPU selected #{@cpu_weapon}"
  end

  def determine_result
    return 'draw' if @player_weapon == @cpu_weapon
    return 'loss' if @player_weapon == @@weapons[@@weapons.index(@cpu_weapon)-1]
    'win'
  end

  def print_result
    case @result
      when 'win' then "Contratulations #{@player.name}! YOU WIN"
      when 'loss' then "Sorry #{@player.name}! YOU LOST"
      when 'draw' then "Its a DRAW, #{@player.name}!"
    end
  end

end