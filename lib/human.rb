class Human

  @human

  def self.new_human_player(human_name)
    @human = Human.new(human_name)
    return @human
  end

  def self.now
    @human
  end

  attr_reader :name, :outcome, :computer_plays

  def initialize(human_name)
    @name = human_name
  end

  def rock
    number_generator
    if @random_number == 1
      @computer_plays = 'rock'
      @outcome = 'drew'
    elsif @random_number == 2
      @computer_plays = 'paper'
      @outcome = 'lost'
    else
      @computer_plays = 'scissors'
      @outcome = 'won'
    end
  end

  def paper
    number_generator
    if @random_number == 1
      @computer_plays = 'rock'
      @outcome = 'won'
    elsif @random_number == 2
      @computer_plays = 'paper'
      @outcome = 'drew'
    else
      @computer_plays = 'scissors'
      @outcome = 'lost'
    end
  end

  def scissors
    number_generator
    if @random_number == 1
      @computer_plays = 'rock'
      @outcome = 'lost'
    elsif @random_number == 2
      @computer_plays = 'paper'
      @outcome = 'won'
    else
      @computer_plays = 'scissors'
      @outcome = 'drew'
    end
  end

  def number_generator
    @random_number = rand(1..3)
  end

end
