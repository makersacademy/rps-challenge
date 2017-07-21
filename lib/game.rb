class Game

  attr_reader :name, :choice, :opponent_choice, :wins

  CHOICES = ['rock', 'paper', 'scissors']
  WIN = [ ['rock','scissors'], ['paper','rock'], ['scissors','paper'] ]
  PICTURES = {
    'rock'=>"http://www.clker.com/cliparts/0/b/8/9/1216137609217389073Angelo_Gemmi_stone.svg.med.png",
    'paper'=>"http://www.clker.com/cliparts/6/5/d/d/12408471771447666572PrinterKiller_Paper.svg.med.png",
    'scissors'=> "http://www.clker.com/cliparts/d/b/d/6/11949839942140777322scissors.svg.med.png"
   }

  def initialize (name)
    @name = name
    set_up_game
  end

  def log
    return "First round..." if @history.empty?
    "Rounds: #{@rounds}, Won: #{@win_count}, Drawn: #{@draw_count}, Lost: #{@lose_count}<br>" +
    (@history.length >= 5 ? @history.last(5) : @history)
    .reverse.join("<br>")
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def set_up_game
    @history = []
    @win_count = 0
    @draw_count = 0
    @lose_count = 0
    @rounds = 0
  end

  def image(rps)
    '<img src='+PICTURES[rps]+' width="200" height="260">'
  end

  def outcome
    @history.last
  end

  def choose(player_choice, opponent_choice = nil)
    @choice = player_choice
    @opponent_choice = opponent_choice ||= random_choice
    @history << choices_string + ". " + outcome_string
    win? ? (@win_count += 1) : draw? ? (@draw_count += 1) : (@lose_count += 1)
    @rounds += 1
  end

  def choices_string
    "#{@name} chose #{@choice}, Computer chose #{@opponent_choice}"
  end

  def outcome_string
    if draw?
      "It's a draw!"
    elsif win?
      "You win!"
    else
      "You lose!"
    end
  end

  private

  def random_choice
    CHOICES.sample
  end

  def draw?
    @choice == @opponent_choice
  end

  def win?
    WIN.include? [ @choice, @opponent_choice ]
  end

end
