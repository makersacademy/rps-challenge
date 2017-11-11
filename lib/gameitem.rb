class GameItem
  attr_reader :name, :beats

  def initialize(name)
    @name   = name
    @beats  = define_beats
  end

  private
  def define_beats
    case name
    when 'rock' then 'scissors'
    when 'paper' then 'rock'
    when 'scissors' then 'paper'
    end
  end

end
