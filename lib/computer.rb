# Execute random computer selection and send back number.

module Computer

def self.choice
  number = rand(101)
  if number < 34
    "rock"
  elsif number > 34 && number < 67
    "paper"
  else
    "scissors"
  end
end
end
