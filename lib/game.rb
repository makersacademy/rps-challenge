class Game
  WEAPONS = [:rock, :paper, :scissors]
  WIN_COMBINATIONS = { :rock => :scissors, :paper => :rock, :scissors => :paper }
  
  def self.instance
    @game
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  attr_reader :player

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def result
    return :tie if player_choice == computer_choice
    return :win if WIN_COMBINATIONS[player_choice] == computer_choice

    :lose
  end

  def player_name
    @player.name
  end

  def player_choice
    @player.choice
  end

  def update_player_choice(choice)
    @player.update_choice(choice.to_sym)
  end

  def computer_choice
    @computer.random_choice
  end
end
