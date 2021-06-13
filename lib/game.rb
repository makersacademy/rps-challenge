require_relative 'player'
require_relative 'computer'

class Game

  attr_reader :player, :computer, :RPS_COMBOS


  player_moves = []

  RPS_COMBOS = {
    rock:     {scissors: :win,  paper: :loss, rock: :draw, spock: :win, lizard: :loss},
    paper:    {scissors: :loss, paper: :draw, rock: :win, spock: :loss, lizard: :loss},  
    scissors: {scissors: :draw, paper: :win,  rock: :loss, spock: :win, lizard: :win},
    spock:    {scissors: :win,  paper: :loss, rock: :win, spock: :draw, lizard: :win}, 
    lizard:   {scissors: :loss, paper: :win,  rock: :loss, sock: :loss, lizard: :draw}
    }

  def initialize(player = Player.new, computer = Computer.new)
    @player = player 
    @computer = computer
  end

  def play(player_move)
    @player.move(player_move)
    @computer.random_choice
  end

  def choice
    @player.choice
    @computer.choice
  end


  def play_rps
    reveal_move(player.choice, computer.choice)
    player_score(result)
  end

  def win
    player.points == 5 
  end

  def loss
    computer.points == 5
  end 
 

  def reveal_move(player_choice, computer_choice)
    puts "#{player.name} selects #{player_choice}"
    puts "#{computer.name} selects #{computer_choice}"
  end

  def result
    RPS_COMBOS[player.choice][computer.choice]
  end

  def player_score(result)
    case result
    when :win
      player.give_point
    when :loss
      computer.give_point
    else
      puts "No points for either player."
    end
  end

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end
    
  def self.instance
    @game
  end
end

  