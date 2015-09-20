class Paper

  def beats?(shape)
    return true if shape.is_a? Rock
    false
  end

end