require_relative 'player'

class Game

  attr_reader :player, :game, :comp, :selection

  def initialize(player)
    @player = player
  end

  def comp_select
    @comp = ["Rock", "Paper", "Scissors"].sample
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def rock
    @selection = "Rock"
  end

  def paper
    @selection = "Paper"
  end

  def scissors
    @selection = "Scissors"
  end

  def compare
    if @selection == "Rock"
      if @comp == "Rock"
        "Draw"
      elsif @comp == "Paper"
         "Computer has won"
      elsif @comp == "Scissors"
         "#{player.name} has won"
      end
    elsif @selection == "Paper"
      if @comp == "Rock"
         "#{player.name} has won"
      elsif @comp == "Paper"
         "Draw"
      elsif @comp == "Scissors"
         "Computer has won"
      end
    elsif @selection == "Scissors"
      if @comp == "Rock"
         "Computer has won"
      elsif @comp == "Paper"
         "#{player.name} has won"
      elsif @comp == "Scissors"
         "Draw"
      end
    end
  end
end


  # def compare_rock
  #   if comp_select == "Rock"
  #      "The result is draw"
  #   elsif comp_select == "Paper"
  #      "#{player.name} has won"
  #   elsif comp_select == "Scissors"
  #      "Computer has won"
  #   end
  # end
  #
  # def compare_Paper
  #   if comp_select == "Paper"
  #      "The result is draw"
  #   elsif comp_select == "Rock"
  #      "#{player.name} has won"
  #   elsif comp_select == "Scissors"
  #      "Computer has won"
  #   end
  # end
  #
  # def compare_scissors
  #   if comp_select == "Scissors"
  #      "The result is draw"
  #   elsif comp_select == "Paper"
  #      "#{player.name} has won"
  #   elsif comp_select == "Rock"
  #      "Computer has won"
  #   end
  # end
#
# end
