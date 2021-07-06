class AI
  def random(value1 = 'rock', value2 = 'paper', value3 = 'scissors')
    pick = []
    pick.push(value1, value2, value3)
    return pick.sample
  end
end
