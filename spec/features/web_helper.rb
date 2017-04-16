def potential_messages
  [:rock, :paper, :scissors].map { |shape| "Opponent choice: #{shape.to_s.capitalize}" }
end
