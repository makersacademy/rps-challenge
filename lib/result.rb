class Result
  attr_accessor :results

  def initialize
    @results = Array.new
  end

  def add_result(new_result)
    @results << new_result
  end

  def get_result
    net_score = @results.count(:won) - @results.count(:lost) #need to work out how to caculate the result in one go
    return :won if net_score > 0
    return :lost if net_score < 0
    :draw
  end

end
