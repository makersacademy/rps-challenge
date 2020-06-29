require_relative "person"

class Game
  attr_accessor :array, :player_1, :player_2
  def initialize(name = "default", name2 = nil)
    @array = ["Rock","Paper","Scissors"]
    @player_1 = Person.new(name)
    @player_2 = Person.new(name2)
  end

  def play(choice)
    choice_1 = choice
    computer_choice = @array.sample

    string = "Computer chose #{computer_choice}. "

    if choice_1 == computer_choice
      string << "It's a draw"
    elsif
      @array.last == choice_1 && @array[0] == computer_choice
      string << "#{computer_choice} beats #{choice_1}. Computer wins"
      @player_2.points += 1
    elsif
      @array.last == computer_choice && @array[0] == choice_1
      string << "#{choice_1} beats #{computer_choice}. Player wins"
      @player_1.points += 1
    elsif
      @array.index(choice_1) >= @array.index(computer_choice)
      string << "#{choice_1} beats #{computer_choice}. Player wins"
      @player_1.points += 1
    elsif
      @array.index(choice_1) <= @array.index(computer_choice)
      string << "#{computer_choice} beats #{choice_1}. Computer wins"
      @player_2.points += 1
    end
    string
  end

  def winner
    if @player_2.points > @player_1.points
      "#{@player_2.name} wins!"
    else
      "#{@player_1.name} wins!"
    end
  end
end