class Game
  def initialize(selection)
     @selection = selection
  
  end


  def cpu_selection()
    @cpu_selection = ["Rock", "Paper", "Scissors"].sample
  end

  def player_selection
    @selection
  end

  def game_result
    p @selection
    p @cpu_selection
    if @selection == "Rock" && @cpu_selection == "Paper"
       return "You Loose!"
    end

    if @selection == "Rock" && @cpu_selection == "Scissors"
       return "You Win!"
    end

    if @selection == "Paper" && @cpu_selection == "Scissors"
        return "You Loose!"
    end

    if @selection == "Paper" && @cpu_selection == "Rock"
        return "You Win!"
    end

    if @selection == "Scissors" && @cpu_selection == "Rock"
        return "You Loose!"
    end

    if @selection == "Scissors" && @cpu_selection == "Paper"
        return "You Win!"
    end

    if @selection == @cpu_selection
       return "It's a draw!"
    end
    
  end


end