require_relative 'computer'

class Game

  attr_reader :player

  def initialize(player_name)
    @player = player_name
    @computer = Computer.new
    @player_choice = nil
    @comp_choice = @computer.weapon
  end

  def player_choice(player_weapon)
    @player_weapon = player_weapon
  end

  # def player_rock?
  #   @player_weapon == 'rock'
  # end
  #
  # def player_paper?
  #   @player_weapon == 'paper'
  # end
  #
  # def player_scissors?
  #   @player_weapon == 'scissors'
  # end

  def game_logic
    draw
      if @player_weapon == 'rock' && @comp_choice == 'scissors'
        "#{@player} wins!"
      elsif @player_weapon == 'paper' && @comp_choice == 'rock'
        "#{@player} wins!"
      elsif @player_weapon == 'scissors' && @comp_choice == 'rock'
        "#{@player} wins!"
      else
        "Computer wins!"
      end
    end

    def draw
      if @player_weapon == @comp_choice
        return "it's a draw"
      end
    end







end
