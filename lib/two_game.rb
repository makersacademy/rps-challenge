class Two_game
  attr_reader :one_choice, :two_choice

  def initialize(player_one_choice, player_two_choice)
    @one_choice = player_one_choice
    @two_choice = player_one_choice
    @options = ['rock', 'paper', 'scissors']
  end

  def invalid_choice?
     return true unless @options.include?(one_choice) && @options.include?(one_choice)
  end

  def one_win?
    return true if @one_choice == 'rock' && @two_choice == 'scissors'
    return true if @one_choice == 'paper' && @two_choice == 'rock'
    return true if @one_choice == 'scissors' && @two_choice == 'paper'
    return false
  end

  def two_win?
    return true if @two_choice == 'rock' && @one_choice == 'scissors'
    return true if @two_choice == 'paper' && @one_choice == 'rock'
    return true if @two_choice == 'scissors' && @one_choice == 'paper'
    return false
  end

  def match?
    return true if two_choice == one_choice
    return false
  end
end
