class Game

attr_reader :player, :playerwins, :compwins, :turns_left

  def initialize(name, mode)
    @player = name
    @playerwins = 0
    @compwins = 0
    @turns_left = turns(mode)
  end

  def self.create(name, mode)
  @game = Game.new(name, mode)
  end

  def self.instance
    @game
  end

  def turns(mode)
    if mode == "One_Off"
      @turns_left = 1
    elsif mode == "Best_of_3"
      @turns_left = 3
    elsif mode == "Best_of_5"
      @turns_left = 5
    end
  end

  def computer_move
    ['Rock','Paper','Scissors'].sample
  end

  def computer_win
    @compwins += 1
  end

  def player_win
    @playerwins += 1
  end

  def winner
    if @compwins == @playerwins
      return "It's a draw!"
    elsif @compwins > @playerwins
      return "Computer Wins!"
    elsif @playerwins > @compwins
      return "#{@player} Wins!"
    end
  end


  def end_of_turn
    @turns_left -= 1
  end

end
