class Game

  attr_reader :player_1_name, :player_2_name

  def initialize(name_1, name_2 = "Rock Paper Sissors bot 2000")
    @player_1_name = name_1
    @player_2_name = name_2
    #@num = num
    #@player_1_name = p_1.name
    #@player_2_name = p_2.name
    @selection = []
  end

  def selection(rps)
    @selection << rps
  end

  def number_of_players
      return 2 if @player_2_name == "Rock Paper Sissors bot 2000"
      1
  end


  def return_selection
    @selection[-1]
  end

  def rules(player_1, player_2)
    draw = 1
    win = 2
    lose = 0
    return [draw, draw] if player_1 == "Rock" && player_2 == "Rock" || player_1 == "Paper" && player_2 == "Paper" || player_1 == "Sissors" && player_2 == "Sissors"
    return [win, lose]  if player_1 == "Rock" && player_2 == "Sissors" || player_1 == "Sissors" && player_2 == "Paper" || player_1 == "Paper" && player_2 == "Rock"
    return [lose, win]  if player_1 == "Rock" && player_2 == "Paper" || player_1 == "Sissors" && player_2 == "Rock" || player_1 == "Paper" && player_2 == "Sissors"
  end

  def declares_a_winner(player_1, player_2)
    array = rules(player_1,player_2)
    return "#{@player_1_name} wins!"  if array[0] > array[1]
    return "#{@player_2_name} wins!"  if array[0] < array[1]
    return "It's a Draw!"  if array[0] == array[1]
  end

  # def one_player(name_1, name_2)
  #   @player_1_name = name
  #   @player_2_name = "Rock Paper Sissors bot 2000"
  # end
  #
  # def two_players(name_1, name_2)
  #   @player_1_name = name_1
  #   @player_2name = name_2
  # end

end
