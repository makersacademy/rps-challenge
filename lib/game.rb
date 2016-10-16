class Game

attr_reader :outcome, :users_choice, :bots_choice, :name

def self.create
  @@game = Game.new
end

def self.game
  @@game
end

def set_name(name)
  @name = name
end

def played?
  @played
end

def play(choice)
  @users_choice = choice
  @bots_choice = random_choice
  @outcome = result
  @played = true
end

private

def initialize
  @played = false
end

def random_choice
  ["rock", "paper", "scissors"].sample
end

def result
  return "You tied" if same?
  return "You win!" if win?
  "You loose"
end

def same?
  bots_choice == users_choice
end

def win?
  (users_choice == "paper" && bots_choice == "rock") ||
  (users_choice == "rock" && bots_choice == "scissors") ||
  (users_choice == "scissors" && bots_choice == "paper")
end

end
