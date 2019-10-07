class Game
  attr_reader :player, :cpu_choice, :player_choice

  def initialize(player)
    @cpu_choices = ['Rock', 'Paper', 'Scissors']
    @player = player
  end

  def move(move)
    @player_choice = @player.choice(move)
  end

  def cpu_move
    @cpu_choice = @cpu_choices.sample
  end

  def image_selector(choice)
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

  def result(player, cpu)
    return 'DRAW' if player == cpu

    if (player == 'Rock' && cpu == 'Scissors') ||
      (player == 'Paper' && cpu == 'Rock') ||
      (player == 'Scissors' && cpu == 'Paper')
      return 'WIN'
    else
      return 'LOSE'
    end
  end
end
