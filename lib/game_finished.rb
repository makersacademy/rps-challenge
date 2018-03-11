class Game_finished

  def check_finished(results)
    return :end if results.length == 5
  end
end
