class Game

  def self.create(player, computer)
    @game = Game.new(player, computer)
    @game
  end

  attr_reader :player, :computer, :player_weapon, :computer_weapon

  def initialize(player, computer)
    @player = player
    @computer = computer
    @weapons = { "Rock" => :rock, "Paper" => :paper, "Scissors" => :scissors }
    @victory_calc = VictoryCalculator.new
  end

  def self.instance
    @game
  end

  def start(player_weapon)
    if @weapons.has_key?(player_weapon)
      @player_weapon = @weapons.fetch(player_weapon)
      @computer_weapon = @computer.weapon_choice
    else
      print "I did not understand your weapon #{player_weapon}"
    end
  end

  def games_weapons
    [@player_weapon, @computer_weapon]
  end

  def outcome
    if @victory_calc.win?(games_weapons())
      "#{@player.name}"
    elsif @victory_calc.draw?(games_weapons())
      "No one! It's a draw for #{@player.name} and #{@computer.name}"
    else
      "#{@computer.name}"
    end
  end

end
