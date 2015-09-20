class Rock

  def beats?(shape)
    return true if shape.is_a? Scissors
    false
  end

end