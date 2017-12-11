class Game
  attr_reader :automatic_choice, :option, :player_1, :player_2

  def initialize(option)
    @option = option
  end

  def add_player_1(player_1)
    @player_1 = player_1
  end

  def add_player_2(player_2)
    @player_2 = player_2
  end

  def record_automatic_player_choice
    @automatic_choice = automatic_choice
  end

  def result
    return "drew" if @automatic_choice == @player_1.choice
    second_choice = correct_choice

    case @player_1.choice
    when "paper" then second_choice == 'rock' ? @player_1.name : @player_2.name
    when "rock" then second_choice == 'scissor' ? @player_1.name : @player_2.name
    when "scissor" then second_choice == 'paper' ? @player_1.name : @player_2.name
    end
  end


  private

  def automatic_choice
    ["rock", "paper", "scissor"].sample
  end

  def correct_choice
    if @option == 'single'
      @automatic_choice
    else
      @player_2.choice
    end
  end


end
