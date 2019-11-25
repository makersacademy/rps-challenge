class Player
  attr_reader :name, :player_value

  def initialize(name)
    @name = name
    @value = ["rock", "paper", "scissors"]
  end

  def choose_option(player_value)
    @player_value = player_value
  end
end

  # value = ["rock", "paper", "scissors"]
  # puts "Player 1 input move"
  # value_1 = gets.chomp
  # puts "Player 2 input move"
  # value_2 = value.sample
  #
  # if player_value == value[1] && value_2 == value[0]
  #   puts "Player wins"
  # elsif player_value == value[2] && value_2 == value[0]
  #   puts "Robot wins"
  # elsif player_value == value[0] && value_2 == value[1]
  #   puts "Robot wins"
  # elsif player_value == value[2] && value_2 == value[1]
  #   puts "Player wins"
  # elsif player_value == value[0] && value_2 == value[2]
  #   puts "Player wins"
  # elsif player_value == value[1] && value_2 == value[2]
  #   puts "Robot wins"
  # else
  #   puts "It's a draw"
  # end
