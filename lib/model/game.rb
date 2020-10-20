class Game

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def return_player_name
    @player.name
  end

  def make_player_choice(selection)
    @player.choose(selection)
  end

  def return_player_choice
    @player.choice
  end

  def robo_choice
    make_robo_choice
    return_robo_choice
  end

  def calculate_result

      case
      when return_robo_choice == @player.choice
        @result = "It's a draw."
      when (return_robo_choice == :rock) && (@player.choice == :paper)
        @result = "You won, ok. Big deal."
      when (return_robo_choice == :rock) && (@player.choice == :scissors)
        @result = "YOU LOST, GET OVER IT"
      when (return_robo_choice == :paper) && (@player.choice == :rock)
        @result = "YOU LOST, GET OVER IT"
      when (return_robo_choice == :paper) && (@player.choice == :scissors)
        @result = "You won, ok. Big deal."
      when (return_robo_choice == :scissors) && (@player.choice == :rock)
        @result = "You won, ok. Big deal."
      when (return_robo_choice == :scissors) && (@player.choice == :paper)
        @result = "YOU LOST, GET OVER IT"
      end

      @result

  end

  private

  def make_robo_choice
    @robo_choice = [:rock, :paper, :scissors].sample
  end

  def return_robo_choice
    @robo_choice
  end

end
