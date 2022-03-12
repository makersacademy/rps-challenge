def message_for_random_choice
  [:rock, :scissors, :paper].map { |choice| "Computer chose: #{choice.to_s.capitalize}" }
end
