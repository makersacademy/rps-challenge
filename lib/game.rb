class Game

  attr_reader :player_1, :weapon, :computer_weapon, :draw, :player_winner

  def initialize(player_1_name, player_klass = Player)
    @player_1 = player_klass.new(player_1_name)
    @computer_weapon = nil
    @player_winner = false
    @draw = false
    @weapon_array = ["rock", "paper", "scissors"]
    @win_conditions = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }
  end

  def choose_weapon(weapon)
    @player_1.set_weapon(weapon)
  end

  def computer_choose_weapon
    @computer_weapon = @weapon_array[rand(1..3)-1]
  end

  # def who_wins
  #   @draw = true if @player_1.weapon == @computer_weapon
  #   @player_winner = true unless (@player_1.weapon == "rock" && @computer_weapon == "paper") || (@player_1.weapon == "paper" && @computer_weapon == "scissors") || (@player_1.weapon == "scissors" && @computer_weapon == "rock")
  # end

  def who_wins

    @draw = true if @player_1.weapon == @computer_weapon
    @win_conditions[@player_1.weapon] == @computer_weapon ? @player_winner = false : @player_winner = true

  end


end
