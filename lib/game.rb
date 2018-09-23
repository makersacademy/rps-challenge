class Game

  attr_reader :player

  def initialize(player)
    @player = Player.new(player)
  end


    def winner?
      true if @user_move == "Rock" && @comp_move == "Scissors"
      true if @user_move == "Paper" && @comp_move == "Rock"
      true if @user_move == "Scissors" && @comp_move == "Paper"
    end

end
