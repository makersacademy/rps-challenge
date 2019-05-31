class Game
  attr_reader :player, :choice, :cpu_choice

  def initialize(player)
    @cpu_choices = ['Rock', 'Paper', 'Scissors']
    @player = player
  end

  def player
    @player
  end

  def move(move)
    @player.choice(move)
  end

  def cpu_move
    @cpu_choice = @cpu_choices.sample
  end

  def imageSelector(choice)
    case choice.downcase
      when 'rock'
        return '/images/rock.png'
      when 'paper'
        return '/images/paper.png'
      when 'scissors'
        return '/images/scissors.png'
      else
        return '/images/confused.png'
    end
  end
end
