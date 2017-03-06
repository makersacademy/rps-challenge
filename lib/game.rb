class Game

attr_reader :player_1
attr_accessor :player_choice, :computer_choice

  def initialize(name)
    @player_1 = name
    @weapons = ["Rock", "Paper", "Scissors"]
    @win_choices = [[:Rock, :Scissors],[:Paper, :Rock],[:Scissors, :Paper]]
    @lose_choices = @win_choices.map {|a,b| [b,a]}
  end

  def random
    @weapons.sample
  end

  # def select_choice
  #   @computer_choice = self.random
  # end


  def calculate
    @p1p2choice = [@player_choice.to_sym, @computer_choice.to_sym]
    return "#{player_1} wins" if @win_choices.include?(@p1p2choice)
    return "I win" if @lose_choices.include?(@p1p2choice)
    "Tie :("
  end

end
