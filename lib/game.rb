class Game
  attr_reader :p1, :p2

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  def self.create(p1, p2)
    @game = Game.new(p1, p2)
  end

  def self.instance
    @game
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
    wining_combo = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }
    if wining_combo[@p1.choice].eql?(@p2.choice)
      "You Won!"
    elsif wining_combo[@p2.choice].eql?(@p1.choice)
      "You Lose!"
    else
      "It's a Draw!"
    end
  end

end
