class GameItem
  attr_reader :name

  def initialize(name)
    @name   = name
    @beats  = define_beats
  end

  def beats?(opponent)
    return 0 if @name == opponent.name
    @beats == opponent.name
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
