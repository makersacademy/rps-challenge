require_relative 'player'

class Game

  attr_reader :player, :object, :computer_object

  WIN = [
    [:Rock, :Scissors],
    [:Paper, :Rock],
    [:Scissors, :Paper]
  ]

  LOSE = [
   [:Rock, :Paper],
   [:Paper, :Scissors],
   [:Scissors, :Rock]
 ]

 WEAPONS = [:Rock, :Paper, :Scissors]

  def choice(object)
    @object = object.capitalize.to_sym
  end


  def random_selection
    @random_selection = WEAPONS.sample
  end

  def match
    [@object, @random_selection]
  end

  def winner
    if WIN.include?(match)
      :winner
    elsif LOSE.include?(match)
       :loser
    else
      :draw
    end
  end

  # def self.instance #allows you to access @game
  #   @game
  # end
  #
  # def self.create(object)  #replaces/updates @game instance variable
  #   @game = Game.new(object)
  # end
end
