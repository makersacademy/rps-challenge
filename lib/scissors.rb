class Scissors

  def beats?(shape)
    return true if shape.is_a? Paper
    false
  end

end