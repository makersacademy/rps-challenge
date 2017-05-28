class Game

  attr_reader :player, :computer, :weapons, :player_weapon, :games_weapons, :victory_calc

  def initialize(player, computer)
    @player = player
    @computer = computer
    @weapons = { "Rock" => :rock, "Paper" => :paper, "Scissors" => :scissors }
    @player_weapon = []
    @victory_calc = VictoryCalculator.new
  end

  def start(player_weapon)
    if @weapons.has_key?(player_weapon)
      @player_weapon << @weapons.fetch(player_weapon)
    end
  end

  def player_weapon_string
    @player_weapon.join
  end

  # TODO refactor this is way too long! chain some methods together
  def games_weapons
    @games_weapons = []
    @games_weapons.push(@player_weapon, @computer.weapon_choice)
    player_weapon = @games_weapons[0].join.to_sym
    @games_weapons.delete_at(0)
    @games_weapons.push(player_weapon)
    @games_weapons.reverse
      # @games_weapons.delete_at(0).push(player_weapon).reverse
  end

  # TODO this is not 100% accurate outcome- need to sort out logic
  def win_game?
    @victory_calc.win?(games_weapons())
  end

  def draw_game?
    @victory_calc.draw?(games_weapons())
  end

  # TODO this is not 100% accurate outcome- need to sort out logic
  def outcome
    if win_game?
      "#{@player.name}"
    elsif draw_game?
      "No one! It's a draw for #{@player.name} and #{@computer.name}"
    else
      "#{@computer.name}"
    end
  end

end
