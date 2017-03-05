class Game
attr_reader :player_1
attr_accessor :player_choice

  def initialize(name)
    @player_1 = name
    @choice = ["Rock", "Paper", "Scissors"]
    @win_choices = [[:Rock, :Scissors],[:Paper, :Rock],[:Scissors, :Paper]]
    @lose_choices = @win_choices.map {|a,b| [b,a]}
  end

  def random
    @choice.sample
  end

  def calculate
    @p1p2choice = [self.player_choice.to_sym, self.random.to_sym]
    return "You won"  if @win_choices.include?(@p1p2choice)
    return "I win" if @lose_choices.include?(@p1p2choice)
    "Tied"
  end

end
