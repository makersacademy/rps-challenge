class Game
  WEAPONS = [:rock, :paper, :scissors, :spock, :lizard]

  WIN_COMBINATIONS = { :rock => [:scissors, :lizard],
                       :paper => [:spock, :rock],
                       :scissors => [:lizard, :paper],
                       :spock =>  [:rock, :scissors],
                       :lizard => [:paper, :spock]
                      }
  
  def self.instance
    @game
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  attr_reader :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    return :tie if @player.choice == @computer.choice
    return :win if WIN_COMBINATIONS[@player.choice].include? @computer.choice

    :lose
  end

  def update_player_choice(choice)
    @player.update_choice(choice.to_sym)
  end

  def update_computer_choice
    @computer.random_choice
  end
end
