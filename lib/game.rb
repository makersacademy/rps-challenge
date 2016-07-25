class Game

attr_reader :player, :cpu_choice, :cpu_value

  def initialize(player)
    @player = player
    @cpu_choices = ["rock", "paper", "scissors"]
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def cpu_choose
    @cpu_value = Kernel.rand(0..2)
    @cpu_choice = @cpu_choices[@cpu_value]
  end

  def winner
    if @player.player_value == @cpu_value
      return "#{player.name} has drawn with computer"
    elsif (@player.player_value + @cpu_value).even?
      if @player.player_value < @cpu_value
        return "#{player.name} has won!"
      else
        return "#{player.name} has lost"
      end
    else
      if @player.player_value > @cpu_value
        return "#{player.name} has won!"
      else
        return "#{player.name} has lost"
      end
    end
  end

end
