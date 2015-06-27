class Rock

  def > another_object
    true   if another_object is_a? Scissors 
    false  if another_object is_a? Paper
    :equal if another_object is_a? Rock

end