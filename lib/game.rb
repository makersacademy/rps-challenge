class Game

  attr_reader :player, :computer, :weapons, :player_weapon, :victory_calc, :computer_weapon

  def initialize(player, computer)
    @player = player
    @computer = computer
    @weapons = { "Rock" => :rock, "Paper" => :paper, "Scissors" => :scissors }
    @victory_calc = VictoryCalculator.new
  end

  def start(player_weapon)
    if @weapons.has_key?(player_weapon)
      @player_weapon = @weapons.fetch(player_weapon)
      @computer_weapon = @computer.weapon_choice
    else
      puts "I did not understand your weapon #{player_weapon}"
    end
  end

  def games_weapons
    [@player_weapon, @computer_weapon]
  end

  def win_game?
    @victory_calc.win?(games_weapons())
  end

  def draw_game?
    @victory_calc.draw?(games_weapons())
  end

  def outcome
    p games_weapons
    if win_game?
      "#{@player.name}"
    elsif draw_game?
      "No one! It's a draw for #{@player.name} and #{@computer.name}"
    else
      "#{@computer.name}"
    end
  end

end
