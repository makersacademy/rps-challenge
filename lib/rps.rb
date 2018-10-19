class Rps

  attr_reader :selection

  def initialize(selection)
    @selection = selection
    @arr = []
  end

  def chance
    rand(1..3)
  end

  def computer(val)
    if val == 1
      @arr.push "R"
    elsif val == 2
      @arr.push "P"
    else
      @arr.push "S"
    end
  end

    def user
      if @selection == "Rock"
        @arr.push "R"
      elsif @selection == "Paper"
        @arr.push "P"
      else
        @arr.push "S"
      end
    end

    def decide
      case
        when @arr == ["R","R"] || ["P","P"] || ["S","S"]
          :tie
        when @arr == ["R","S"] || ["P","R"] || ["S","P"]
          :lose
        when @arr == ["S","R"] || ["R","P"] || ["P","S"]
          :win
      end
    end

end
