class AI
  def random(value1 = 'rock', value2 = 'paper', value3 = 'scissors')
    args = method(__method__).parameters.map { |arg| arg[1].to_s }
    pick = args.map { |arg| "#{eval arg}" }
    return pick.sample
  end
end
