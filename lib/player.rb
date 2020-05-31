class Player

  attr_reader :name, :result

  def initialize(name)
    @name = name
  end

  def play_rps(move)
    temp = CompMove.new
    comp_move = temp.move
    if move == "rock" && comp_move == "rock"
      @result = "You both chose rock... It's a draw!"
    elsif move == "rock" && comp_move == "paper"
      @result = "Unlucky, your rock lost to paper :("
    elsif move == "rock" && comp_move == "scissors"
      @result = "Congrats, your rock beat scissors!"
    elsif move == "paper" && comp_move == "paper"
      @result = "You both chose paper... It's a draw!"
    elsif move == "paper" && comp_move == "rock"
      @result = "Congrats, your paper beat rock!"
    elsif move == "paper" && comp_move == "scissors"
      @result = "Unlucky, your paper lost to scissors :("
    elsif move == "scissors" && comp_move == "scissors"
      @result = "You both chose scissors... It's a draw!"
    elsif move == "scissors" && comp_move == "rock"
      @result = "Unlucky, your scissors lost to rock :("
    elsif move == "scissors" && comp_move == "paper"
      @result = "Congrats, your scissors beat paper!"
    end
  end

end
