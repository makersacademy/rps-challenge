class Game

  attr_reader :p1, :p2, :rounds, :current_turn, :current_round, :players

  def initialize(p1, p2, rounds)
    @p1 = p1
    @p2 = p2
    @players =[p1, p2]
    @rounds = rounds
    @current_round = 1
    @current_turn = p1
  end

  def self.create(p1, p2, rounds)
    @game = Game.new(p1, p2, rounds)
  end

  def self.instance
    @game
  end

  def give_points(round)
    move1 = round.h1
    puts "P1 move = #{move1}"
    move2 = round.h2
    puts "P2 move = #{move2}"
    calculate(move1, move2)
  end

  def switch
    @current_turn = opponent_of(current_turn)
  end
  
  def opponent_of(a_player)
    @players.select { |player| player != a_player }.first
  end

  def post(current_turn)
    case current_turn
      when p1
        "/bet1"
      when p2
        "/bet2"
    end
  end

  def next_round
    @current_round += 1
  end

  def calculate(move1, move2)
    unless move1 == move2
      case move1
      when 'rock'
        move2 == 'scissors' ? @p1.points += 1 : @p2.points += 1
      when 'paper'
        move2 == 'rock' ? @p1.points += 1 : @p2.points += 1
      when 'scissors'
        move2 == 'paper' ? @p1.points += 1 : @p2.points += 1
      end
    end
    puts "P1 points = #{@p1.points}"
    puts "P2 points = #{@p2.points}"
  end

  def is_finished
    case @rounds
      when "1"
        (@p1.points == 1 || @p2.points == 1) ? true : false
      when "3"
        (@p1.points == 2 || @p2.points == 2) ? true : false
      when "5"
        (@p1.points == 3 || @p2.points == 3) ? true : false
    end
  end

end