class Game

  attr_reader :name, :choice, :bot_choice

  def initialize(options)
    @name = options["name"]
    @choice = options["choice"]
    @bot_choice = options["bot_choice"]
  end

  def win?
    return if @bot_choice.nil?
    if @choice == @bot_choice
      nil
    elsif @choice == "Rock" && @bot_choice == "Scissors"
      true
    elsif @choice == "Scissors" && @bot_choice == "Paper"
      true
    elsif @choice == "Paper" && @bot_choice == "Rock"
      true
    else
      false
    end
  end
end
