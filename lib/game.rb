class Game
  attr_reader :p1, :p2

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @choices = ['rock', 'paper', 'scissors']
  end

  def defend
    @choices.sample # commented out to see if it's even working
  end

  def alert_type
    if generate_win_message.include?('Won')
      'alert-success'
    elsif generate_win_message.include?('Lose')
      'alert-danger'
    else
      'alert-info'
    end
  end

  def result
    generate_win_message
  end

  private

  def generate_win_message
    wins = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }
    if wins[@p1.choice].eql?(@p2.choice)
      "You Won!"
    elsif wins[@p2.choice].eql?(@p1.choice)
      "You Lose!"
    else
      "It's a Draw!"
    end
  end


end
