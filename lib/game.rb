require './lib/player'

class Game

  attr_reader :player, :win, :players_choice, :computers_choice

  def initialize(name, player_class = Player)
    @player = player_class.new(name)
  end

  def pick_weapon
    ['rock', 'paper', 'scissors', 'lizard', 'spock'].sample
  end

  def determine_result(player_choice, computer_choice = pick_weapon)
    save_choices(player_choice, computer_choice)
    return @win = 'draw' if player_choice == computer_choice

    case player_choice
    when 'rock'
      return @win = true if computer_choice == 'scissors'
      return @win = true if computer_choice == 'lizard'
    when 'paper'
    return @win = true if computer_choice == 'rock'
    return @win = true if computer_choice == 'spock'
    when 'scissors'
      return @win = true if computer_choice == 'paper'
      return @win = true if computer_choice == 'lizard'
    when 'lizard'
      return @win = true if computer_choice == 'spock'
      return @win = true if computer_choice == 'paper'
    when 'spock'
      return @win = true if computer_choice == 'scissors'
      return @win = true if computer_choice == 'rock'
    end
    @win = false
  end

  def save_choices(player, computer)
    @players_choice = player
    @computers_choice = computer
  end

  def game_reset
    @win = nil
    @players_choice = nil
    @computers_choice = nil
  end

end




