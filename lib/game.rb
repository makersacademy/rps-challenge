class Game

  attr_reader :player_1_name, :player_2_name, :selection, :count

  def initialize(name_1, name_2 = "Rock Paper Sissors bot 2000")
    @player_1_name = name_1
    @player_2_name = name_2
    #@num = num
    #@player_1_name = p_1.name
    #@player_2_name = p_2.name
    @rps_array = ["Rock", "Paper", "Sissors"]
    @count = 1
  end

  def increment_count
    @count += 1
  end

  def selection(rps)
    @selection = ""
    @selection = rps
  end

  def selection_2(rps)
    @selection_2 = ""
    @selection_2 = rps
  end

  def number_of_players
      return 1 if @player_2_name == "Rock Paper Sissors bot 2000"
      2
  end

  def computer_selection
    @selection_2 = ""
    @selection_2 = @rps_array.sample
  end

  def return_selection
    @selection
  end

  def rules(player_1, player_2)
    draw = 1
    win = 2
    lose = 0
    return [draw, draw] if player_1 == "Rock" && player_2 == "Rock" || player_1 == "Paper" && player_2 == "Paper" || player_1 == "Sissors" && player_2 == "Sissors"
    return [win, lose]  if player_1 == "Rock" && player_2 == "Sissors" || player_1 == "Sissors" && player_2 == "Paper" || player_1 == "Paper" && player_2 == "Rock"
    return [lose, win]  if player_1 == "Rock" && player_2 == "Paper" || player_1 == "Sissors" && player_2 == "Rock" || player_1 == "Paper" && player_2 == "Sissors"
  end

  def declares_a_winner(player_1 = @selection, player_2 = @selection_2)
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
